package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C77F15E636B3D62FA")
@:expose("C77F15E636B3D62FA")
class Ev_sub_096_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub096_001", "npc_sub096_002", "npc_pokemon_sub096_1", "npc_pokemon_sub096_2"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -469.23, 26.32, -260.86, -9.01);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub096_002", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-470.06, 28.13, -262.6]), lua.Table.create([-11.18, -155.88, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_096_010_talk_01", "sub_096", "npc_sub096_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub096_2", 20);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub096_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub096_2", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub096_002", "Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_096_010_talk_02", "sub_096", "npc_sub096_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_096_010_talk_03", "sub_096", "npc_sub096_002");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_096_010_talk_04", "sub_096", "npc_sub096_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var dynamicNpcName:String = lua.abi.Host.concat(Std.string("dyn_"), Std.string("npc_adult02_a_f_01"));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(dynamicNpcName, lua.Table.create([-471.97, 26.31, -264.94]), -174.43, "npc_adult02_a_f_01");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("ASANAN", lua.Table.create([-473.29, 26.31, -266.49]), -174.43, 307, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -469.0, 26.32, -261.32, -5.43);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_adult02_a_f_01", -469.99, 26.31, -260.25, 58.25);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("ASANAN", -470.44, 26.31, -259.3, 144.43);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub096_002", -468.44, 26.3, -259.01, -126.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub096_2", -468.7, 26.31, -258.05, -143.56);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_sub096_2");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub096_002");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_adult02_a_f_01", "npc_sub096_002", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("ASANAN", "npc_sub096_002", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-470.55, 28.05, -263.14]), lua.Table.create([-15.72, -157.96, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub096_002", 28);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_096_010_talk_06", "sub_096", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_adult02_a_f_01", "ASANAN", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_096_010_talk_07", "sub_096", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ASANAN", 25);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-468.89, 27.58, -260.73]), lua.Table.create([-2.89, -166.2, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_096_010_talk_10", "sub_096", "npc_sub096_002");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_096_010_talk_11", "sub_096", "npc_sub096_002");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_096_010_talk_12", "sub_096", "npc_sub096_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T0");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("ASANAN", "dyn_npc_adult02_a_f_01", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-468.01, 28.42, -260.64]), lua.Table.create([-29.51, 112.39, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_adult02_a_f_01", 19);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ASANAN", 25);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_096_010_talk_13", "sub_096", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-470.55, 28.05, -263.14]), lua.Table.create([-15.72, -157.96, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_adult02_a_f_01", "npc_sub096_002", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_096_010_talk_14", "sub_096", "npc_sub096_002");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_adult02_a_f_01", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_096_010_talk_16", "sub_096", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("ASANAN");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ASANAN", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_096_010_talk_17", "sub_096");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-467.37, 28.08, -261.6]), lua.Table.create([-18.48, 114.86, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_npc_adult02_a_f_01", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_adult02_a_f_01", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("ASANAN", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_npc_adult02_a_f_01", "head");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_096_010_talk_18", "sub_096", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_adult02_a_f_01", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_096_010_talk_19", "sub_096", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ASANAN", 20);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0096");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
