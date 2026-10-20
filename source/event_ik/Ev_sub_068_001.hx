package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CB9C07535AC09C8A9")
@:expose("CB9C07535AC09C8A9")
class Ev_sub_068_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub068_001", "npc_sub068_002", "npc_pokemon_sub068_1", "npc_pokemon_sub068_2"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-508.21), 0.16, (-20.22), (-66.9));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub068_001", (-509.66), 0.15, (-19.93), (-81.82));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub068_002", (-511.09), 0.15, (-20.01), 97.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub068_1", (-510.4), 0.35, (-18.98), (-158.58));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub068_001", "npc_sub068_002", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub068_002", "npc_sub068_001", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub068_001", "sad");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub068_1");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var effectKey:Dynamic = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-507.51), 1.15, (-22.48)]), lua.Table.create([(-4.0), 147.57, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-508.88), 1.15, (-22.15)]), lua.Table.create([(-4.0), 147.57, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub068_001", 32, null, 3.75);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_068_001_talk_01", "sub_068", "npc_sub068_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub068_001", "npc_pokemon_sub068_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub068_002", "npc_pokemon_sub068_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub068_1", 36);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub068_002", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_068_001_talk_03", "sub_068", "npc_sub068_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub068_001", "npc_sub068_002", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub068_002", "npc_sub068_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub068_001", 32, null, 3.75);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_068_001_talk_05", "sub_068", "npc_sub068_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-509.51), 1.1, (-20.82)]), lua.Table.create([11.13, 118.81, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([(-509.83), 1.26, (-20.64)]), lua.Table.create([11.13, 118.81, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub068_002", 2);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub068_002");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_068_001_talk_06", "sub_068", "npc_sub068_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-509.83), 1.26, (-20.64)]), lua.Table.create([11.13, 118.81, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.25, lua.Table.create([(-510.29), 1.41, (-20.39)]), lua.Table.create([11.13, 118.81, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub068_002", "anger");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub068_002", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_068_001_talk_07", "sub_068", "npc_sub068_002", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-510.25), 1.56, (-20.37)]), lua.Table.create([(-29.8), (-120.29), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub068_001", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_068_001_talk_08", "sub_068", "npc_sub068_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-508.88), 1.15, (-22.15)]), lua.Table.create([(-4.0), 147.57, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub068_002", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_068_001_talk_09", "sub_068", "npc_sub068_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var npcSub068001Animation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub068_001", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_068_001_talk_11", "sub_068", "npc_sub068_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcSub068001Animation);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub068_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub068_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub068_001", 27, null, 2.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.4);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub068_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub068_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub068_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub068_1", (-510.09), 0.35, (-18.78), (-172.35));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-507.42), 1.46, (-22.12)]), lua.Table.create([(-6.8), 140.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub068_001", 32, null, 3.75);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub068_001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_068_001_talk_12", "sub_068", "npc_sub068_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0068");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub068_002", 1);
    }
}
