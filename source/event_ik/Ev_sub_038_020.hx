package event_ik;

import main.event.ik.base.BaseSubQuest;
import main.event.ik.command.IkScriptCommand;
import main.event.ik.command.IkScriptCommand.EaseCameraType;
import ext.gf.audio.SoundCommand;
import cppbindings.Vector3Values as Vector3;

@:keep
@:chunk("event_ik")
@:hashAbi("C4301D635B8C625E9")
@:expose("C4301D635B8C625E9")
class Ev_sub_038_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = ["npc_sub038_001"];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub038_001", -288.1, 1.38, -670.46, -116.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -291.09, 1.4, -672.43, 64.62);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub038_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub038_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-293.08, 3.44, -672.26] : Array<Float>)))), ((lua.Table.create(([-5.17, -98.15, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub038_001", 22);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, ((lua.Table.create(([-293.08, 2.79, -672.26] : Array<Float>)))), ((lua.Table.create(([-5.17, -98.15, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_038_020_talk_01", "sub_038", "npc_sub038_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_038_020_talk_02", "sub_038", "npc_sub038_001");
        var selection:StdTypes.Int = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_038_020_select_01", "msg_Ev_sub_038_020_select_02"], 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub038_001", 3);
        if ((0 == selection)) {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub038_001", 174);
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_038_020_talk_03", "sub_038", "npc_sub038_001", true, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        } else {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub038_001", 175);
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_038_020_talk_04", "sub_038", "npc_sub038_001", true, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_038_020_talk_05", "sub_038", "npc_sub038_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub038_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub038_001", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_038_020_talk_06", "sub_038", "npc_sub038_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-293.08, 2.79, -672.26] : Array<Float>)))), ((lua.Table.create(([-5.17, -98.15, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub038_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub038_001", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub038_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_038_020_talk_07", "sub_038", "npc_sub038_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0038");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub038_001", -277.58, 1.38, -672.81, -96.67));
    }
}
