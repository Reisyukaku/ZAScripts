package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C1730902EE0A35667")
@:expose("C1730902EE0A35667")
class Ev_sub_065_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub065_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:Dynamic = "ef_line";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -455.85, 1.5, -934.13, 113.88);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub065_001", -453.5, 1.5, -934.85, -75.37);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub065_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub065_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub065_001", "sad2");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-456.51, 3.94, -932.9]), lua.Table.create([-7.31, -44.32, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-456.51, 2.94, -932.9]), lua.Table.create([-7.31, -44.32, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub065_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_065_020_talk_01", "sub_065", "npc_sub065_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub065_001", 2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub065_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_065_020_talk_03", "sub_065", "npc_sub065_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub065_001", "rejoice_big");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub065_001", 174);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_M");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-454.94, 2.83, -933.3]), lua.Table.create([-5.52, -42.3, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-454.1, 3.01, -934.22]), lua.Table.create([-5.52, -42.3, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub065_001", "anger");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub065_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_065_020_talk_04", "sub_065");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-456.51, 2.94, -932.9]), lua.Table.create([-7.31, -44.32, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub065_001", 1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub065_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_065_020_talk_07", "sub_065", "npc_sub065_001");
        var selection:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_065_020_select_01", "msg_Ev_sub_065_020_select_02"]), 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-452.58, 3.03, -934.47]), lua.Table.create([-8.83, 84.37, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        if (0 == selection)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub065_001", 21);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_065_020_talk_08", "sub_065", "npc_sub065_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 175);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub065_001", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_065_020_talk_09", "sub_065", "npc_sub065_001");
        };
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_065_020_talk_10", "sub_065", "npc_sub065_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-456.51, 2.94, -932.9]), lua.Table.create([-7.31, -44.32, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub065_001", "sad2");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_065_020_talk_11", "sub_065", "npc_sub065_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub065_001", 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub065_001", "irritation");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_065_020_talk_12", "sub_065", "npc_sub065_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0065");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub065_001", "normal");
    }
}
