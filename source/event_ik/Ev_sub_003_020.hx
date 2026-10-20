package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C7F0B474E84CF8E97")
@:expose("C7F0B474E84CF8E97")
class Ev_sub_003_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = [];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var textResourcePath:Dynamic = untyped main.event.ik.command.TextResourceManager.GetTextResourcePath("script/main_03_01");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        var achievementMessage:Dynamic = "";
        var resultMode:Dynamic = untyped this.m_eventScriptParam.f73EE8FEC();
        if ("0" == resultMode)
        {
            achievementMessage = "msg_Ev_m03_0120_talk_30";
        }
        else if ("1" == resultMode)
        {
            achievementMessage = "msg_Ev_m03_0120_talk_31";
        }
        else if ("2" == resultMode)
        {
            achievementMessage = "msg_Ev_m03_0120_talk_32";
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -511.92, 0.15, -126.25, -146.71);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub03_0002", -512.52, 0.15, -127.17, 33.29);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub03_0002", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub03_0002", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-510.56, 1.48, -126.06]), lua.Table.create([-3.36, 70.17, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_ev_sub_003_talk_13", "sub_003", "npc_sub03_0002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var handoverAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub03_0002", 74);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_ev_sub_003_talk_22", "sub_003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(handoverAnimation);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-511.7, 1.66, -126.85]), lua.Table.create([-3.36, 70.17, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var surpriseAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub03_0002", 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub03_0002", "surprise");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_ev_sub_003_talk_14", "sub_003", "npc_sub03_0002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(surpriseAnimation);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub03_0002", "rejoice_small_mc");
        var rejoiceAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub03_0002", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_ev_sub_003_talk_15", "sub_003", "npc_sub03_0002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(rejoiceAnimation);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-510.56, 1.48, -126.06]), lua.Table.create([-3.36, 70.17, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Facial("npc_sub03_0002");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_ev_sub_003_talk_16", "sub_003", "npc_sub03_0002");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub03_0002", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_ev_sub_003_talk_17", "sub_003", "npc_sub03_0002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub03_0002", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0003");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-511.7, 1.66, -126.85]), lua.Table.create([-3.36, 70.17, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Facial("npc_sub03_0002");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_ev_sub_003_talk_18", "sub_003", "npc_sub03_0002");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub03_0002", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_ev_sub_003_talk_19", "sub_003", "npc_sub03_0002");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub03_0002", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_ev_sub_003_talk_20", "sub_003", "npc_sub03_0002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, achievementMessage, "main_03_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Facial("npc_sub03_0002");
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
