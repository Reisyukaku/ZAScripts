package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC1B5EAB658690752")
@:expose("CC1B5EAB658690752")
class Ev_m03_0140 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_detective", false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("tmpMachi", lua.Table.create([-444.52, 0.28, -167.87]), 155.0, "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("tmpPoke_bef", lua.Table.create([-444.52, 0.28, -167.87]), 155.0, 181, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("tmpPoke_aft", lua.Table.create([-444.52, 0.28, -167.87]), 155.0, 181, 1, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        var scene:StdTypes.Null<cppbindings.CA042DA13> = cppbindings.C682D8E4F.fEF94D11D("event_script");
        var trainer:StdTypes.Null<cppbindings.C016374C1> = scene.fD4E64AB7("tmpMachi");
        var beforeEvolution:StdTypes.Null<cppbindings.C016374C1> = scene.fD4E64AB7("tmpPoke_bef");
        var afterEvolution:StdTypes.Null<cppbindings.C016374C1> = scene.fD4E64AB7("tmpPoke_aft");
        var player:Dynamic = cppbindings.CBFB1CB46.fA925EE56();
        var description:Dynamic = cppbindings.C08A10931.f101D811F();
        var timelinePath:cppbindings.C4D8F1342 = cppbindings.C4D8F1342.f69D04ADF("ik_demo/ee/m_shinka_tr0013/m_shinka_tr0013_00_detective.trtml");
        untyped (cast description : Dynamic).f1AB0C609(timelinePath);
        untyped (cast description : Dynamic).f055C2079("data:/world/ik_obj_template/parts/demo/ee/m_shinka_tr0013_00_/m_shinka_tr0013_00.trsot");
        untyped (cast description : Dynamic).f9581B992("event_script");
        untyped (cast description : Dynamic).f33C1EF35(0, afterEvolution);
        untyped (cast description : Dynamic).fE705005F(0, trainer);
        untyped (cast description : Dynamic).f33C1EF35(1, beforeEvolution);
        var playHandle:Dynamic = untyped (cast player : Dynamic).f757E37AB(description);
        while (!lua.abi.Host.truthy(untyped (cast player : Dynamic).f5876B42D(playHandle))) {
            this.Suspend();
        };
    }
}
