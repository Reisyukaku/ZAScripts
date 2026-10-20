package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C3F399F6B3CD681A6")
@:expose("C3F399F6B3CD681A6")
class Ev_sub_004_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub004_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -299.75, 1.39, -670.44, -45.37);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub004_001", -301.25, 1.38, -669.77, 113.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub004_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub004_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-299.36, 3.37, -671.61]), lua.Table.create([1.0, 146.78, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-299.36, 2.67, -671.61]), lua.Table.create([1.0, 146.78, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub004_001", "smile");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub004_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_020_talk_01", "sub_004", "npc_sub004_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub004_001", "serious");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub004_001", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_020_talk_02", "sub_004", "npc_sub004_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_020_talk_03", "sub_004", "npc_sub004_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub004_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_020_talk_04", "sub_004", "npc_sub004_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub004_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub004_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_020_talk_05", "sub_004", "npc_sub004_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-299.36, 2.67, -671.61]), lua.Table.create([1.0, 146.78, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-299.61, 2.67, -671.4]), lua.Table.create([1.0, 146.78, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub004_001", 2);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-299.8, 2.56, -671.39]), lua.Table.create([12.38, 138.92, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.22, lua.Table.create([-300.65, 2.84, -670.42]), lua.Table.create([12.38, 138.92, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub004_001", "sad");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub004_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_004_020_talk_06", "sub_004", "npc_sub004_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0004");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub004_001", 1);
    }
}
