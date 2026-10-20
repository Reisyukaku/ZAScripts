package event_ik;

import main.event.ik.base.BaseEvent;
import main.event.ik.command.IkScriptCommand;
import cppbindings.C56DE81E7;

@:keep
@:chunk("event_ik")
@:hashAbi("C039AF8D9BDA72644")
@:expose("C039AF8D9BDA72644")
class LastBattleEndDemo_3 extends BaseEvent
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
        this.PlayDemo("ik_demo/ee/ee902/ee902.trtml", false);
        var scene:cppbindings.CA042DA13 = main.event.ik.EventScriptManager.GetSene();
        var subScene:StdTypes.Null<cppbindings.CA042DA13> = scene.f1FC07C91("world/ik_scene/parts/demo/ee/ee915_/ee915.trscn");
        this.Await(function():StdTypes.Bool {
            return subScene.f9D8BC178();
        });
        cppbindings.C56DE81E7.f64B1EB08(true);
        this.PlayDemo("ik_demo/ee/ee915/ee915.trtml", false);
        cppbindings.C56DE81E7.f3FB846EA(3);
        while (!lua.abi.Host.truthy(cppbindings.C56DE81E7.f2AD78B02())) {
            this.Suspend();
        };
        this.PlayDemo("ik_demo/ee/ee916/ee916.trtml", false);
        subScene.f5C99C0AC();
        cppbindings.C56DE81E7.fECBB9320();
        cppbindings.C56DE81E7.f6C03DEB9();
    }
}
