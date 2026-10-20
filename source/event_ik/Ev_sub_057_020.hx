package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CE39AC74219CE3826")
@:expose("CE39AC74219CE3826")
class Ev_sub_057_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_sub057_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        cppbindings.C5090F7B8.f92941AC0("flag_Ev_sub_057_HoroUnlock", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub057_1", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub057_2", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-747.66), 0.01, (-171.53), (-132.81));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub057_001", (-746.46), 0.16, (-162.24), (-159.87));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-745.29), 1.48, (-161.74)]), lua.Table.create([(-5.95), 38.08, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(15, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([(-744.54), 1.61, (-160.79)]), lua.Table.create([(-5.95), 38.08, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(15, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub057_001", "Player", "head");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub057_001", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_057_020_talk_01", "sub_057", "npc_sub057_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-749.9), 0.16, (-173.24), (-117.46));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub057_001", (-750.87), 0.15, (-172.57), (-148.75));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub057_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub057_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-746.76), 3.22, (-173.18)]), lua.Table.create([(-5.18), 80.97, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-746.76), 1.37, (-173.18)]), lua.Table.create([(-5.18), 80.97, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_057_020_talk_02", "sub_057", "npc_sub057_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_057_020_talk_03", "sub_057", "npc_sub057_001");
        main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_057_020_select_01", "msg_Ev_sub_057_020_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub057_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_057_020_talk_04", "sub_057", "npc_sub057_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub057_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_057_020_talk_05", "sub_057", "npc_sub057_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub057_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub057_001", "Player", "head");
        var turnHandle1:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub057_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_sub057_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_057_020_talk_08", "sub_057", "npc_sub057_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0057");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
