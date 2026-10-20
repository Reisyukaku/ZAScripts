package event_ik;

import main.event.ik.base.BaseEvent;
import main.event.ik.command.IkScriptCommand;
import cppbindings.C56DE81E7;

@:keep
@:chunk("event_ik")
@:hashAbi("C039AF9D9BDA727F7")
@:expose("C039AF9D9BDA727F7")
class LastBattleEndDemo_2 extends BaseEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        var player:cppbindings.C65853BD0 = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent("Player");
        if ((player.f4F420785() != null)) {
            if (cppbindings.C56DE81E7.fBA22EECD(player.f4F420785().fE9C29DA1())) {
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(player.f4F420785().fE9C29DA1(), false);
            };
        };
        cppbindings.C56DE81E7.f70911262();
        cppbindings.C56DE81E7.f64B1EB08(false);
        this.PlayDemo("ik_demo/ee/ee901/ee901.trtml", false);
        var scene:cppbindings.CA042DA13 = main.event.ik.EventScriptManager.GetSene();
        var subScene:StdTypes.Null<cppbindings.CA042DA13> = scene.f1FC07C91("world/ik_scene/parts/demo/ee/ee910_/ee910.trscn");
        this.Await(function():StdTypes.Bool {
            return subScene.f9D8BC178();
        });
        cppbindings.C56DE81E7.f64B1EB08(true);
        this.PlayDemo("ik_demo/ee/ee910/ee910.trtml", false);
        cppbindings.C56DE81E7.f3FB846EA(2);
        while (!lua.abi.Host.truthy(cppbindings.C56DE81E7.f2AD78B02())) {
            this.Suspend();
        };
        var effect:String = @:ast(switch (C56DE81E7.f1C1BEEF2()) {
            case 1:{
                "ew0615_lb";
            };
            case 2:{
                "ew0616_lb";
            };
            case 3:{
                "ew0614_lb";
            };
            default:{
                "";
            };
        }) {
            var localResult:Dynamic = cppbindings.C56DE81E7.f1C1BEEF2();
            switch localResult {
                case 1:{
                    {
                        "ew0615_lb";
                    };
                };
                case 2:{
                    {
                        "ew0616_lb";
                    };
                };
                case 3:{
                    {
                        "ew0614_lb";
                    };
                };
                default:{
                    "";
                };
            };
        };
        this.PlayDemo((((("ik_effect/data/battle/ew06/" + effect) + "/") + effect) + ".trtml"), false);
        subScene.f5C99C0AC();
        cppbindings.C56DE81E7.fECBB9320();
    }
}
