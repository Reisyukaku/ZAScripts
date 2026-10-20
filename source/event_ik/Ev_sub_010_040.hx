package event_ik;

import main.event.ik.base.BaseMainScenario;
import main.event.ik.command.IkScriptCommand;
import main.event.ik.command.IkScriptCommand.EaseCameraType;
import ext.gf.audio.SoundCommand;
import cppbindings.Vector3Values as Vector3;

@:keep
@:chunk("event_ik")
@:hashAbi("C039E8233A3D37525")
@:expose("C039E8233A3D37525")
class Ev_sub_010_040 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = ["npc_sub010_001", "npc_sub010_002"];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub010_001", -728.58, 5.21, -625.29, -88.59);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub010_002", -729.01, 5.21, -624.0, -121.59);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -731.01, 5.23, -625.23, 63.98);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub010_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub010_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub010_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("npc_sub010_002"));
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-734.61, 8.95, -622.82] : Array<Float>)))), ((lua.Table.create(([-28.82, -66.63, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, ((lua.Table.create(([-733.25, 8.13, -623.41] : Array<Float>)))), ((lua.Table.create(([-28.82, -66.63, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_001", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_040_talk_01", "sub_010", "npc_sub010_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-730.49, 6.87, -623.94] : Array<Float>)))), ((lua.Table.create(([-8.15, -57.22, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, ((lua.Table.create(([-730.28, 6.87, -623.62] : Array<Float>)))), ((lua.Table.create(([-8.15, -57.22, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_040_talk_02", "sub_010", "npc_sub010_001");
        var selection:StdTypes.Int = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_010_040_select_01", "msg_Ev_sub_010_040_select_02", "msg_Ev_sub_010_040_select_03"], 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-732.4, 6.67, -624.49] : Array<Float>)))), ((lua.Table.create(([-8.21, -76.87, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        if ((0 == selection)) {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub010_002", "head");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_001", 21);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_010_040_talk_03", "sub_010", "npc_sub010_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_002", 20);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_040_talk_04", "sub_010", "npc_sub010_002");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        } else {
            if ((1 == selection)) {
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_001", 20);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_040_talk_05", "sub_010", "npc_sub010_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_002", 21);
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_010_040_talk_06", "sub_010", "npc_sub010_002");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            } else {
                if ((2 == selection)) {
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 175);
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_001", 21);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_002", 21);
                    main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_010_040_talk_07", "sub_010", "npc_sub010_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_010_040_talk_08", "sub_010", "npc_sub010_002");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                };
            };
        };
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub010_002", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-731.72, 6.76, -625.63] : Array<Float>)))), ((lua.Table.create(([-6.59, -108.94, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, ((lua.Table.create(([-731.04, 6.76, -625.43] : Array<Float>)))), ((lua.Table.create(([-6.59, -108.94, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub010_001", "sad");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub010_002", "sad");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub010_001", "npc_sub010_002", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub010_002", "npc_sub010_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_002", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_040_talk_09", "sub_010", "npc_sub010_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_040_talk_10", "sub_010", "npc_sub010_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_001", 174);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub010_001", "serious");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub010_002", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_040_talk_11", "sub_010", "npc_sub010_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_002", 174);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub010_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub010_002", "normal");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub010_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub010_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-732.4, 6.67, -624.49] : Array<Float>)))), ((lua.Table.create(([-8.21, -76.87, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_040_talk_12", "sub_010", "npc_sub010_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_002", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.StartItemGetSequenceAuto();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub010_002", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_040_talk_13", "sub_010", "npc_sub010_002");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_002", 2);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub010_002", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_040_talk_14", "sub_010", "npc_sub010_002");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_002", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_040_talk_15", "sub_010", "npc_sub010_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub010_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_001", 174);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0010");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub010_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub010_002");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_002", 1);
    }
}
