package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C7768CC4DE6EFC00A")
@:expose("C7768CC4DE6EFC00A")
class Ev_sub_039_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_sub039_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -143.27, 17.34, -348.1, -153.75);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub039_001", -143.86, 17.32, -349.7, 24.64);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub039_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-141.37, 19.55, -347.58]), lua.Table.create([-2.97, 61.14, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-141.37, 18.55, -347.58]), lua.Table.create([-2.97, 61.14, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var animationHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub039_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_039_020_talk_01", "sub_039", "npc_sub039_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub039_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub039_001", "normal");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-142.78, 18.34, -349.11]), lua.Table.create([18.3, 54.87, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-143.09, 18.34, -348.68]), lua.Table.create([18.3, 54.87, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_sub039_001", -81.63));
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub039_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_039_020_talk_02", "sub_039", "npc_sub039_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub039_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_039_020_talk_03", "sub_039", "npc_sub039_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var turnHandle2 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub039_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub039_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-141.37, 18.55, -347.58]), lua.Table.create([-2.97, 61.14, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub039_001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_039_020_talk_07", "sub_039", "npc_sub039_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle2);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub039_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub039_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_039_020_talk_08", "sub_039", "npc_sub039_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0039");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub039_001", "normal");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
