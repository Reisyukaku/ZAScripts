package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C592FF127768FE2C5")
@:expose("C592FF127768FE2C5")
class Ev_sub_056_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub056_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T0");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        cppbindings.C5090F7B8.f92941AC0("flag_Ev_sub_056_HoroUnlock", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -388.22, 0.01, -363.64, 138.47);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub056_001", -386.69, 0.14, -364.61, -50.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub056_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub056_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub056_1", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-388.43, 1.6, -362.05]), lua.Table.create([-13.71, -22.63, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub056_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_056_020_talk_01", "sub_056", "npc_sub056_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_056_020_talk_02", "sub_056", "npc_sub056_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-387.23, 1.22, -363.77]), lua.Table.create([-7.94, -29.03, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub056_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_056_020_talk_03", "sub_056", "npc_sub056_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_056_020_talk_04", "sub_056", "npc_sub056_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-388.43, 1.6, -362.05]), lua.Table.create([-13.71, -22.63, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub056_001", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_056_020_talk_05", "sub_056", "npc_sub056_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub056_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_056_020_talk_06", "sub_056", "npc_sub056_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0056");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_sub056_001", 1);
    }
}
