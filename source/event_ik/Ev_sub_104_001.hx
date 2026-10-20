package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C6A94550DA43DF8DC")
@:expose("C6A94550DA43DF8DC")
class Ev_sub_104_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_sub104_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("KOHUURAI", lua.Table.create([-26.66, 0.0, -26.42]), 169.03, 665, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub104_001", -16.07, 0.01, -25.96, 89.63);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub104_002", -16.09, 0.0, -26.64, 89.63);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -14.24, 0.02, -26.3, -80.4);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub104_001", "sad");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub104_002", "sad");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-14.86, 1.64, -27.11]), lua.Table.create([-2.62, 121.98, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_001_talk_01", "sub_104", "npc_sub104_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_001_talk_02", "sub_104", "npc_sub104_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-13.09, 1.33, -27.43]), lua.Table.create([-2.62, 121.98, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub104_001", "serious");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub104_002", "serious");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub104_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub104_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_001_talk_03", "sub_104", "npc_sub104_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_001_talk_04", "sub_104", "npc_sub104_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub104_001", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_001_talk_05", "sub_104", "npc_sub104_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub104_002", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_001_talk_06", "sub_104", "npc_sub104_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-14.63, 1.18, -27.13]), lua.Table.create([11.3, 120.53, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-14.9, 1.29, -27.02]), lua.Table.create([11.3, 120.53, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub104_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_001_talk_07", "sub_104", "npc_sub104_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub104_002", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_001_talk_08", "sub_104", "npc_sub104_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub104_001", 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_001_talk_09", "sub_104", "npc_sub104_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub104_002", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub104_002", 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub104_002", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_001_talk_10", "sub_104", "npc_sub104_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-13.09, 1.33, -27.43]), lua.Table.create([-2.62, 121.98, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub104_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_001_talk_11", "sub_104", "npc_sub104_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub104_002", "serious");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub104_002", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_001_talk_12", "sub_104", "npc_sub104_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-11.5, 1.84, -28.26]), lua.Table.create([-13.73, 114.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("KOHUURAI", -27.12, 0.0, -28.18, 0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_001_talk_13", "sub_104", "npc_sub104_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "KOHUURAI", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-25.13, 0.59, -28.66]), lua.Table.create([-11.19, 104.15, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var turnHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("KOHUURAI", 126.2, false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-25.62, 0.44, -28.54]), lua.Table.create([-11.19, 104.15, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KOHUURAI", 17);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0104");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
