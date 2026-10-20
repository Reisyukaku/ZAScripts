package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C82A1684924AAF3F6")
@:expose("C82A1684924AAF3F6")
class Ev_sub_062_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub062_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub062_001", -739.53, 5.22, -628.07, -116.32);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -743.17, 5.23, -629.48, 76.18);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub062_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub062_001", "Player", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub062_001", "sad");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-745.44, 7.33, -628.86]), lua.Table.create([-1.69, -85.74, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-745.44, 6.46, -628.86]), lua.Table.create([-1.69, -85.74, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub062_001", 22);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-740.64, 6.87, -628.09]), lua.Table.create([-0.95, -91.01, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(26, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_062_020_talk_01", "sub_062", "npc_sub062_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub062_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_062_020_talk_02", "sub_062", "npc_sub062_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-738.9, 6.73, -627.2]), lua.Table.create([-7.72, 50.03, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(26, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub062_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub062_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_062_020_talk_03", "sub_062", "npc_sub062_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_062_020_talk_04", "sub_062", "npc_sub062_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub062_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_062_020_talk_05", "sub_062", "npc_sub062_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-740.64, 6.87, -628.09]), lua.Table.create([-0.95, -91.01, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(26, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub062_001", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_062_020_talk_06", "sub_062", "npc_sub062_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-745.44, 6.46, -628.86]), lua.Table.create([-1.69, -85.74, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub062_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_062_020_talk_07", "sub_062", "npc_sub062_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub062_001", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0062");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
