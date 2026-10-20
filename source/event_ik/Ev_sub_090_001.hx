package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CC927AD71DE267116")
@:expose("CC927AD71DE267116")
class Ev_sub_090_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub089_001", "npc_pokemon_sub090_1", "npc_pokemon_sub090_2", "npc_pokemon_sub090_3", "npc_pokemon_sub090_4", "npc_pokemon_sub090_5"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-205.7), 0.11, (-862.78), (-39.52));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub089_001", (-206.7), 0.11, (-861.36), 141.62);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub090_1", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub090_2", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub090_3", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub090_4", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub090_5", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub090_1", (-206.09), 1.22, (-860.74), (-168.1));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub090_2", (-206.63), 1.22, (-860.62), 165.16);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub090_3", (-207.19), 1.22, (-860.8), 146.89);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub090_4", (-207.57), 1.22, (-861.3), 132.59);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub090_5", (-207.53), 1.22, (-861.89), 107.12);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub090_1");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub090_2");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub090_3");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub090_4");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub090_5");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub089_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub089_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub090_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub090_2", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub090_3", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub090_4", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub090_5", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-205.8), 1.96, (-864.6)]), lua.Table.create([(-16.05), 171.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub089_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_090_001_talk_01", "sub_090", "npc_sub089_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub089_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_090_001_talk_02", "sub_090", "npc_sub089_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB_090_PV_670");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub090_1", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub090_2", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub090_3", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub090_4", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub090_5", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_090_001_talk_03", "sub_090");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub089_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_090_001_talk_04", "sub_090", "npc_sub089_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_090_001_talk_05", "sub_090", "npc_sub089_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub089_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub089_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_090_001_talk_06", "sub_090", "npc_sub089_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0090");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_090_001_talk_07", "sub_090", "npc_sub089_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
