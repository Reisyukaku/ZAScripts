package haxe.macro.abi;

#if macro
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.ExprTools;
import haxe.macro.Printer;
import haxe.Json;
import sys.io.File;

/** Scalar propagation for structured functions without loops or captures.
    Keeps branch stores unless every read of that local was substituted. */
class LiteralFlow
{
    static var scratch = ~/^(?:value\d+(?:_\d+)?|L\d+_\d+|result\d+)$/;
    static var printer = new Printer("    ");
    static var staticCalls:Map<String, Bool>;

    static function qualified(e:Expr):String
    {
        return switch bare(e).expr
        {
            case EConst(CIdent(name)): name;
            case EField(owner, field):
                var prefix = qualified(owner);
                prefix == null ? null : prefix + "." + field;
            default: null;
        };
    }

    static function bare(e:Expr):Expr
    {
        return switch e.expr
        {
            case EParenthesis(inner) | EUntyped(inner): bare(inner);
            default: e;
        };
    }

    static function identifier(e:Expr):String
    {
        return switch bare(e).expr
        {
            case EConst(CIdent(name)): name;
            default: null;
        };
    }

    static function literal(e:Expr):Bool
    {
        return switch bare(e).expr
        {
            case EConst(CInt(_) | CFloat(_) | CString(_, _)): true;
            case EConst(CIdent("null" | "true" | "false")): true;
            case EUnop(OpNeg | OpNot, _, inner): literal(inner);
            case ECast(inner, _): literal(inner);
            default: false;
        };
    }

    static function copy(env:Map<String, Expr>):Map<String, Expr>
    {
        return [for (name => value in env) name => value];
    }

    static function replace(e:Expr, env:Map<String, Expr>):Expr
    {
        var name = identifier(e);
        if (name != null && env.exists(name)) return env.get(name);
        return ExprTools.map(e, function(child) return replace(child, env));
    }

    static function walk(e:Expr, env:Map<String, Expr>, allowed:Map<String, Bool>):Expr
    {
        switch e.expr
        {
            case EUntyped(inner): e.expr = EUntyped(walk(inner, env, allowed));
            case EParenthesis(inner): e.expr = EParenthesis(walk(inner, env, allowed));
            case EBlock(items):
                e.expr = EBlock([for (item in items) walk(item, env, allowed)]);
            case EIf(condition, yes, no):
                condition = replace(condition, env);
                var yesEnv = copy(env);
                var noEnv = copy(env);
                yes = walk(yes, yesEnv, allowed);
                if (no != null) no = walk(no, noEnv, allowed);
                env.clear();
                for (name => value in yesEnv)
                    if (noEnv.exists(name) && printer.printExpr(value) == printer.printExpr(noEnv.get(name)))
                        env.set(name, value);
                e.expr = EIf(condition, yes, no);
            case EVars(vars):
                for (v in vars)
                {
                    if (v.expr != null) v.expr = replace(v.expr, env);
                    env.remove(v.name);
                    if (allowed.exists(v.name) && v.expr != null && literal(v.expr)) env.set(v.name, v.expr);
                }
            case EBinop(OpAssign, lhs, rhs) if (identifier(lhs) != null):
                var name = identifier(lhs);
                rhs = replace(rhs, env);
                env.remove(name);
                if (allowed.exists(name) && literal(rhs)) env.set(name, rhs);
                e.expr = EBinop(OpAssign, lhs, rhs);
            case EBinop(OpAssignOp(_), lhs, _) if (identifier(lhs) != null):
                // Compound stores need their original local value and type.
                env.remove(identifier(lhs));
            case EUnop(OpIncrement | OpDecrement, _, operand):
                env.remove(identifier(operand));
            default:
                e = replace(e, env);
        }
        return e;
    }

    static function reads(e:Expr, out:Map<String, Bool>):Void
    {
        switch e.expr
        {
            case EBinop(OpAssign, lhs, rhs) if (identifier(lhs) != null): reads(rhs, out);
            case EVars(vars): for (v in vars) if (v.expr != null) reads(v.expr, out);
            case EConst(CIdent(name)): out.set(name, true);
            default: ExprTools.iter(e, function(child) reads(child, out));
        }
    }

    static function prune(e:Expr, used:Map<String, Bool>, allowed:Map<String, Bool>):Expr
    {
        e = ExprTools.map(e, function(child) return prune(child, used, allowed));
        switch e.expr
        {
            case EBlock(items):
                e.expr = EBlock(items.filter(function(item)
                {
                    return switch bare(item).expr
                    {
                        case EBinop(OpAssign, lhs, rhs):
                            var name = identifier(lhs);
                            !(name != null && allowed.exists(name) && !used.exists(name) && literal(rhs));
                        case EVars(vars):
                            var keep = vars.filter(function(v)
                                return !allowed.exists(v.name) || used.exists(v.name) || (v.expr != null && !literal(v.expr)));
                            item.expr = EVars(keep);
                            keep.length > 0;
                        default: true;
                    };
                }));
            default:
        }
        return e;
    }

    static function protect(e:Expr):Expr
    {
        e = ExprTools.map(e, protect);
        return switch e.expr
        {
            case EBinop(OpAssign | OpAssignOp(_), _, _): e;
            case EBinop(_, _, _) | EUnop(_, _, _) | ETernary(_, _, _):
                {expr: EParenthesis(e), pos: e.pos};
            default: e;
        };
    }

    static function union(a:Map<String, Bool>, b:Map<String, Bool>):Map<String, Bool>
    {
        var out = [for (name => value in a) name => value];
        for (name in b.keys()) out.set(name, true);
        return out;
    }

    static function argumentReads(args:Array<Expr>, name:String):Bool
    {
        var used = new Map<String, Bool>();
        for (arg in args) reads(arg, used);
        return used.exists(name);
    }

    /** Fold an adjacent static function alias only when its store is dead
        after the call on every following branch. */
    static function aliases(e:Expr, live:Map<String, Bool>):{value:Expr, live:Map<String, Bool>}
    {
        switch e.expr
        {
            case EUntyped(inner):
                var result = aliases(inner, live);
                e.expr = EUntyped(result.value);
                return {value: e, live: result.live};
            case EParenthesis(inner):
                var result = aliases(inner, live);
                e.expr = EParenthesis(result.value);
                return {value: e, live: result.live};
            default:
        }
        switch bare(e).expr
        {
            case EBlock(items):
                var out:Array<Expr> = [];
                var i = items.length - 1;
                while (i >= 0)
                {
                    var folded = false;
                    if (i > 0)
                    {
                        switch [bare(items[i - 1]).expr, bare(items[i]).expr]
                        {
                            case [EBinop(OpAssign, lhs, rhs), ECall(fn, args)]
                                if (identifier(lhs) != null && scratch.match(identifier(lhs))
                                    && identifier(fn) == identifier(lhs) && !live.exists(identifier(lhs))
                                    && !argumentReads(args, identifier(lhs))
                                    && qualified(rhs) != null && staticCalls.exists(qualified(rhs))):
                                var call:Expr = {expr: EUntyped({expr: ECall(bare(rhs), args), pos: e.pos}), pos: e.pos};
                                out.unshift(call);
                                reads(call, live);
                                i -= 2;
                                folded = true;
                            default:
                        }
                    }
                    if (folded) continue;
                    var result = aliases(items[i], live);
                    out.unshift(result.value);
                    live = result.live;
                    i--;
                }
                e.expr = EBlock(out);
            case EIf(condition, yes, no):
                var a = aliases(yes, union(live, new Map()));
                var b = no == null ? {value: no, live: union(live, new Map())} : aliases(no, union(live, new Map()));
                e.expr = EIf(condition, a.value, b.value);
                live = union(a.live, b.live);
                reads(condition, live);
            case EBinop(OpAssign, lhs, rhs) if (identifier(lhs) != null):
                live.remove(identifier(lhs));
                reads(rhs, live);
            case EVars(vars):
                for (v in vars)
                {
                    live.remove(v.name);
                    if (v.expr != null) reads(v.expr, live);
                }
            default: reads(e, live);
        }
        return {value: e, live: live};
    }

    public static function run(input:String, output:String):Void
    {
        var config:Dynamic = Json.parse(File.getContent(input));
        var requests:Array<Dynamic> = config.requests;
        staticCalls = new Map();
        var names:Array<String> = config.staticCalls == null ? [] : config.staticCalls;
        for (name in names) staticCalls.set(name, true);
        var results:Array<Dynamic> = [];
        for (request in requests)
        {
            if (StringTools.contains(request.expression, "__lua__")) continue;
            try
            {
                var ast = Context.parse(request.expression, Context.currentPos());
                var allowed = new Map<String, Bool>();
                var declarations = new Map<String, Bool>();
                var unsafe = false;
                function inspect(e:Expr):Void
                {
                    switch e.expr
                    {
                        case EFunction(_, _) | EFor(_, _) | EWhile(_, _, _) | ESwitch(_, _, _) | ETry(_, _)
                            | EBinop(OpAssignOp(_), _, _) | EUnop(OpIncrement | OpDecrement, _, _): unsafe = true;
                        case EVars(vars):
                            for (v in vars)
                            {
                                if (declarations.exists(v.name)) unsafe = true;
                                declarations.set(v.name, true);
                                if (scratch.match(v.name) && (v.type == null || switch v.type {case TPath(p): p.name == "Dynamic"; default: false;}))
                                    allowed.set(v.name, true);
                            }
                        default:
                    }
                    ExprTools.iter(e, inspect);
                }
                switch ast.expr
                {
                    case EFunction(_, fn):
                        inspect(fn.expr);
                        function inspectStores(e:Expr, statement:Bool):Void
                        {
                            switch e.expr
                            {
                                case EBlock(items): for (item in items) inspectStores(item, true);
                                case EIf(condition, yes, no):
                                    inspectStores(condition, false);
                                    inspectStores(yes, true);
                                    if (no != null) inspectStores(no, true);
                                case EUntyped(inner) | EParenthesis(inner): inspectStores(inner, statement);
                                case EBinop(OpAssign, _, _):
                                    if (!statement) unsafe = true;
                                    ExprTools.iter(e, function(child) inspectStores(child, false));
                                default: ExprTools.iter(e, function(child) inspectStores(child, false));
                            }
                        }
                        inspectStores(fn.expr, true);
                        if (!unsafe)
                        {
                            fn.expr = aliases(fn.expr, new Map()).value;
                            fn.expr = walk(fn.expr, new Map(), allowed);
                            var used = new Map<String, Bool>();
                            reads(fn.expr, used);
                            function keepNonliteralStores(e:Expr):Void
                            {
                                switch bare(e).expr
                                {
                                    case EBinop(OpAssign, lhs, rhs) if (identifier(lhs) != null && !literal(rhs)):
                                        used.set(identifier(lhs), true);
                                    default:
                                }
                                ExprTools.iter(e, keepNonliteralStores);
                            }
                            keepNonliteralStores(fn.expr);
                            fn.expr = prune(fn.expr, used, allowed);
                        }
                    default: unsafe = true;
                }
                if (!unsafe)
                    results.push({file: request.file, start: request.start, end: request.end,
                        name: request.name, code: printer.printExpr(protect(ast))});
            }
            catch (error:Dynamic)
            {
                throw request.file + ":" + request.name + ": " + Std.string(error);
            }
        }
        File.saveContent(output, Json.stringify(results));
        Sys.println("Processed " + results.length + " structured functions without loops or captures");
    }
}
#end
