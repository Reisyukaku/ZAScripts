package event_ik;

import main.event.ik.base.BaseEvent;
import main.event.ik.command.IkScriptCommand;
import main.event.ik.command.CharacterCommand;
import cppbindings.C65853BD0 as ChrAccessorForEvent;
import cppbindings.C05D9A855 as DemoCommand;
import cppbindings.C08A10931 as BattleTimelinePlayer_PlayDesc;
import cppbindings.C682D8E4F as SceneApi;
import cppbindings.C4D8F1342 as Path;
import cppbindings.C080C692C;
import cppbindings.C56DE81E7;
import cppbindings.CB66BF4D3;
import cppbindings.CBFB1CB46;
import cppbindings.C540D28C4;
import cppbindings.C05D9A855;

@:keep
@:chunk("event_ik")
@:hashAbi("C56C7081AF93B3555")
@:expose("C56C7081AF93B3555")
class Sys_MegaEvoExecute extends BaseEvent
{
    @:abiSlot(8)
    public var visibilityCoroutineKey:String;

    @:abiSlot(9)
    public var isFirstTimeline:Bool;

    public function new()
    {
        isFirstTimeline = true;
        visibilityCoroutineKey = "MegaExcuteNotVisibility";
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var ownerSnapshot:event_ik.Sys_MegaEvoExecute = this;
        var trainerName:String = cppbindings.C56DE81E7.f501EA763();
        var trainer:{ public var fEBA8F794(default, null) : Dynamic; public var fE7AAD57D(default, null) : () -> StdTypes.Bool; public var fE0A62550(default, null) : () -> StdTypes.Bool; public var f8831FC9D(default, null) : () -> StdTypes.Bool; public var f590C9856(default, null) : Dynamic; public var f4F420785(default, null) : () -> StdTypes.Null<StdTypes.Null<{ public var fEBA8F794(default, null) : Dynamic; }>>; public var f1D007816(default, null) : Dynamic; public var f095087FE(default, null) : Dynamic; } = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(trainerName);
        if (((trainer.f4F420785() == null) || (trainer.f4F420785().fEBA8F794() == null))) {
            return;
        };
        this.isFirstTimeline = true;
        cppbindings.C56DE81E7.f9E6E4DEA(true);
        main.event.ik.command.IkScriptCommand.SC171403DAE7D447B();
        var scene:StdTypes.Null<cppbindings.CA042DA13> = cppbindings.C682D8E4F.fEF94D11D("outgame");
        var partner:{ public var f1F5887DF(default, null) : Dynamic; } = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(trainer.f4F420785().fEBA8F794().fE9C29DA1());
        var unit:Dynamic = partner.f1F5887DF();
        var timelineName:Dynamic = cppbindings.C080C692C.fFDFE22F3(unit);
        var beforeParam:Dynamic = cppbindings.CB66BF4D3.f89B3EEBF(unit);
        var afterParam:{ public var f6FAABE2E(default, null) : Dynamic; } = cppbindings.CB66BF4D3.f89B3EEBF(unit);
        var evolvedParam:Dynamic = cppbindings.C080C692C.f0CCA23E6(unit);
        afterParam.f6FAABE2E(evolvedParam);
        trainer.f1D007816();
        cppbindings.CBFB1CB46.fA925EE56();
        main.event.ik.command.CharacterCommand.GetAccessor(trainer.f4F420785().fEBA8F794().fE9C29DA1());
        while (!cppbindings.C56DE81E7.f0D24A19B()) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        if ((untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC() != "FadeSkip")) {
            main.event.ik.command.IkScriptCommand.FadeOutType(8);
        };
        var beforePokemon:{ public var f9D8BC178(default, null) : () -> StdTypes.Bool; public var f82222C9E(default, null) : () -> StdTypes.Null<Dynamic>; } = cppbindings.C080C692C.f5A6FE557(0, scene, "mepoke1", beforeParam);
        var afterPokemon:{ public var f9D8BC178(default, null) : () -> StdTypes.Bool; public var f82222C9E(default, null) : () -> StdTypes.Null<Dynamic>; } = cppbindings.C080C692C.f5A6FE557(1, scene, "mepoke2", afterParam);
        var fullDemo:StdTypes.Bool = false;
        if ((trainer.fE0A62550() && cppbindings.C080C692C.f081C9240())) {
            fullDemo = true;
        };
        if (trainer.f8831FC9D()) {
            fullDemo = true;
        };
        cppbindings.C56DE81E7.f7A9AB8EF(function():StdTypes.Void {
            ownerSnapshot.RemoveSubCorutin(ownerSnapshot.visibilityCoroutineKey);
            main.event.ik.command.IkScriptCommand.S7BF170BA136B3024();
            cppbindings.C56DE81E7.f9E6E4DEA(false);
        });
        while ((!beforePokemon.f9D8BC178() || !afterPokemon.f9D8BC178())) {
            this.Suspend();
        };
        cppbindings.C540D28C4.fF538C712(beforePokemon, beforeParam);
        cppbindings.C540D28C4.fF538C712(afterPokemon, afterParam);
        main.event.ik.command.IkScriptCommand.S95C437713D4FE833(beforePokemon.f82222C9E());
        main.event.ik.command.IkScriptCommand.S95C437713D4FE833(afterPokemon.f82222C9E());
        trainer.f095087FE();
        while (!trainer.fE7AAD57D()) {
            this.Suspend();
        };
        if (fullDemo) {
            var description:Dynamic = cppbindings.C08A10931.f101D811F();
            var timelinePath:String;
            if (trainer.f8831FC9D()) {
                timelinePath = cppbindings.C56DE81E7.f984C2155();
                untyped (cast description : Dynamic).f1AB0C609(cppbindings.C4D8F1342.f69D04ADF(timelinePath));
            } else {
                timelinePath = "ik_demo/ee/m_shinka_pc/m_shinka_pc.trtml";
                untyped (cast description : Dynamic).f1AB0C609(cppbindings.C4D8F1342.f69D04ADF(timelinePath));
            };
            untyped (cast description : Dynamic).f9581B992(scene.fE9C29DA1());
            untyped (cast description : Dynamic).f44C6DFA3(0, beforePokemon);
            untyped (cast description : Dynamic).f44C6DFA3(1, afterPokemon);
            untyped (cast description : Dynamic).fE705005F(0, trainer.fEBA8F794());
            var center:StdTypes.Null<Dynamic> = cppbindings.C56DE81E7.fB26C5999();
            if ((center != null)) {
                untyped (cast description : Dynamic).f7077D379(0, "CENTER_SRT", center);
            };
            untyped (cast description : Dynamic).f7077D379(1, "PARTNER", trainer.f4F420785().fEBA8F794());
            while ((!beforePokemon.f9D8BC178() && !afterPokemon.f9D8BC178())) {
                this.Suspend();
            };
            this.F9111600660209FCA(timelinePath, scene.fE9C29DA1(), description, trainer.fE0A62550());
        };
        var description:Dynamic = cppbindings.C08A10931.f101D811F();
        var timelinePath:String = (((("ik_demo/ee/" + Std.string(timelineName)) + "/") + Std.string(timelineName)) + ".trtml");
        untyped (cast description : Dynamic).f1AB0C609(cppbindings.C4D8F1342.f69D04ADF(timelinePath));
        untyped (cast description : Dynamic).f9581B992(scene.fE9C29DA1());
        untyped (cast description : Dynamic).f44C6DFA3(0, beforePokemon);
        untyped (cast description : Dynamic).f44C6DFA3(1, afterPokemon);
        untyped (cast description : Dynamic).fE705005F(0, trainer.fEBA8F794());
        var center:StdTypes.Null<Dynamic> = cppbindings.C56DE81E7.fB26C5999();
        if ((center != null)) {
            untyped (cast description : Dynamic).f7077D379(0, "CENTER_SRT", center);
        };
        if ((trainer.f4F420785() != null)) {
            untyped (cast description : Dynamic).f7077D379(1, "PARTNER", trainer.f4F420785().fEBA8F794());
        };
        this.F9111600660209FCA(timelinePath, scene.fE9C29DA1(), description, trainer.fE0A62550());
        cppbindings.C080C692C.f37EFFD47();
        if (trainer.fE0A62550()) {
            cppbindings.C080C692C.f3CEBC860();
        };
        trainer.f590C9856();
        main.event.ik.command.IkScriptCommand.S1AD21CC7D382F5A1();
    }
    public function F9111600660209FCA(timelinePath:String, sceneName:String, description:Dynamic, isPlayer:Bool):Dynamic
    {
        var ownerSnapshot:event_ik.Sys_MegaEvoExecute = this;
        cppbindings.C05D9A855.f635E7B9C(timelinePath, sceneName, false);
        this.Await_no_timeout(cppbindings.C05D9A855.f08FA26F1);
        if (this.isFirstTimeline) {
            this.isFirstTimeline = false;
            main.event.ik.command.IkScriptCommand.SDF42F9D9961D0772();
            this.CreateSubCorutin(this.visibilityCoroutineKey, function():StdTypes.Void {
                var disableCollision:StdTypes.Bool = isPlayer;
                if (disableCollision) {
                    disableCollision = cppbindings.C56DE81E7.f3AFDE464();
                };
                while (true) {
                    var enableCollision:StdTypes.Bool = !disableCollision;
                    cppbindings.C56DE81E7.f7A18ACB1(isPlayer, function(name:String):StdTypes.Void {
                        var character:cppbindings.C65853BD0 = main.event.ik.command.CharacterCommand.GetAccessorNoScenario(name);
                        if ((character != null)) {
                            main.event.ik.command.CharacterCommand.EnableInvisible(character);
                            if (enableCollision) {
                                character.f3B751749();
                            };
                        };
                    });
                    ownerSnapshot.Suspend();
                };
            });
        };
        cppbindings.C05D9A855.f6510CC47(description);
        cppbindings.C05D9A855.f40B8C6B1();
        this.Await_no_timeout(cppbindings.C05D9A855.f59D006EE);
        cppbindings.C05D9A855.fB051DFDA();
        return null;
    }
}
