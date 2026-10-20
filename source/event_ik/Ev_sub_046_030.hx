package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CB9522880BD240531")
@:expose("CB9522880BD240531")
class Ev_sub_046_030 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_sub046_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T500");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-49.47), 0.01, (-340.18), 84.86);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub046_001", (-48.28), 0.01, (-339.73), (-108.65));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-50.78), 1.33, (-339.28)]), lua.Table.create([(-1.43), (-67.1), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub046_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub046_001", "Player", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub046_001", "sad");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var animationHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub046_001", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_030_talk_01", "sub_046", "npc_sub046_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle1);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub046_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub046_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_030_talk_02", "sub_046", "npc_sub046_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub046_001", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_030_talk_03", "sub_046", "npc_sub046_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub046_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub046_001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_030_talk_04", "sub_046", "npc_sub046_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub046_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub046_001", 33, null, 4.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_030_talk_05", "sub_046", "npc_sub046_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0046");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
