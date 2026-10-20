package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CD059C45C6BD49493")
@:expose("CD059C45C6BD49493")
class Ev_sub_008_001 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_A02_z02_07_0002", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_A02_z02_07_0002", false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_waiter_m_01", lua.Table.create([-89.56, 0.14, -652.96]), 101.28, "npc_waiter_m_01");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("PERORIIMU", lua.Table.create([-88.78, 0.13, -653.55]), 63.33, 685, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -88.72, 0.14, -650.47, -156.15);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("PERORIIMU", 36);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_waiter_m_01", "PERORIIMU", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-87.51, 1.3, -650.37]), lua.Table.create([-9.77, 34.4, (-0.0)]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_008_001_talk_01", "sub_008", "dyn_npc_waiter_m_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("PERORIIMU", 8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_008_001_talk_02", "sub_008", "PERORIIMU");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_waiter_m_01", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("PERORIIMU", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_npc_waiter_m_01", "Player");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.2, lua.Table.create([-87.12, 1.55, -649.01]), lua.Table.create([-9.77, 34.4, (-0.0)]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_008_001_talk_03", "sub_008", "dyn_npc_waiter_m_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_008_001_talk_04", "sub_008", "dyn_npc_waiter_m_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_008_001_talk_05", "sub_008", "dyn_npc_waiter_m_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_008_001_talk_06", "sub_008", "dyn_npc_waiter_m_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0008");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_008_001_talk_07", "sub_008", "dyn_npc_waiter_m_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
