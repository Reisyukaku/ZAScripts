package main.event.ik.command;

import ext.pe.SceneObjectBehavior;
import cppbindings.C5090F7B8 as EventScriptCommand;
import cppbindings.C7F7A5192 as Timer;
import cppbindings.C5090F7B8;

@:keep
@:chunk("main")
@:hashAbi("C0B6B8AD001243AFE")
@:expose("C0B6B8AD001243AFE")
class FadeCommand extends SceneObjectBehavior
{
    @:hashAbi("S44460EB93267F798")
    public static var DeltaTime:Float = 0;

    @:hashAbi("S8C8D8B0BE6DF60CF")
    public static var m_eventCoroutine:ti.Coroutine;

    public function new(?obj:Dynamic)
    {
        super(obj);
    }

    @:hashAbi("S2D4F4BC40511B560")
    public static function FadeIn(?type:String, ?duration:Float, wait:Bool = false):Dynamic
    {
        cppbindings.C5090F7B8.f757D411A(type, duration);
        if (wait) {
            main.event.ik.command.FadeCommand.FadeInWait();
        };
        return null;
    }

    @:hashAbi("S218E2A14A790D265")
    public static function FadeOut(?type:String, ?duration:Float, wait:Bool = false):Dynamic
    {
        C5090F7B8.fE368ACA1(type, duration, false);
        if (wait)
        {
            FadeOutWait();
        }
        return null;
    }

    public static function S49AB2238FA7CC362(?arg0:Dynamic):Dynamic
    {
        C5090F7B8.f27022794(arg0);
        IkScriptCommand.Suspend();
        return null;
    }

    @:hashAbi("SF131474E968E2D6A")
    public static function FadeWait():Dynamic
    {
        main.event.ik.command.IkScriptCommand.Suspend();
        while ((cppbindings.C5090F7B8.f7D1C7DB1() == false)) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        return null;
    }

    @:hashAbi("SB60BF2E7C2CFBEC0")
    public static function FadeOutWait():Dynamic
    {
        main.event.ik.command.IkScriptCommand.Suspend();
        while ((cppbindings.C5090F7B8.fCDB5C389() == false)) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        return null;
    }

    @:hashAbi("S54460201016E6EA1")
    public static function FadeInWait():Dynamic
    {
        IkScriptCommand.Suspend();
        while (C5090F7B8.f5B2E7A20() == false)
        {
            IkScriptCommand.Suspend();
        }
        return null;
    }

    @:hashAbi("FE94F3E13286232CF")
    public override function PreUpdate(context:Dynamic):Void
    {
        var timer:cppbindings.C7F7A5192 = untyped (cast context : Dynamic).f88E57203();
        main.event.ik.command.FadeCommand.DeltaTime = timer.fC0E2CAD0();
        if (((main.event.ik.command.FadeCommand.m_eventCoroutine != null) && (lua.Coroutine.status(main.event.ik.command.FadeCommand.m_eventCoroutine.m_coroutine) != (cast "dead")))) {
            var coroutine:ti.Coroutine = main.event.ik.command.FadeCommand.m_eventCoroutine;
            var resume:lua.Coroutine.CoroutineResume<Dynamic> = lua.Coroutine.resume(coroutine.m_coroutine, context);
            if (!resume.success) {
                throw new haxe.Exception(((("!Error ocurred in coroutine[" + Std.string(coroutine.Name)) + "]: ") + Std.string(resume.result)));
            };
        };
    }
}
