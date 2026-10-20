package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C4EA9A4826F4FD3A4")
@:expose("C4EA9A4826F4FD3A4")
class Ev_sub_037_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub037_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -258.44, 0.09, -287.36, 38.27);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub037_001", -256.44, 0.08, -284.17, -145.37);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub037_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub037_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-260.18, 2.07, -287.97]), lua.Table.create([-5.38, -123.68, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-260.18, 1.5, -287.97]), lua.Table.create([-5.38, -123.68, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub037_001", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_037_020_talk_01", "sub_037", "npc_sub037_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub037_001", 3);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_037_020_talk_04", "sub_037", "npc_sub037_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub037_001", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_037_020_talk_05", "sub_037", "npc_sub037_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-260.18, 1.5, -287.97]), lua.Table.create([-5.38, -123.68, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub037_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_037_020_talk_06", "sub_037", "npc_sub037_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub037_001", 174);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH01");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_037_020_talk_07", "sub_037", "npc_sub037_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub037_001");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub037_001", -260.01, 0.08, -278.94, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0037");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
