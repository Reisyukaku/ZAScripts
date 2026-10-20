package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CDE00973D3783E51F")
@:expose("CDE00973D3783E51F")
class Ev_sub_105_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub105_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_MUTE_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_MUTE_T0");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-460.02), (-1.25), (-869.95), 125.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub105_001", (-458.63), (-1.26), (-870.89), (-53.2));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub105_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub105_001", "head");
        var effectKey:Dynamic = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub105_001", "surprise_mc");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-459.56), (-0.4), (-870.79)]), lua.Table.create([(-13.17), (-27.04), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-459.38), (-0.49), (-871.14)]), lua.Table.create([(-13.17), (-27.04), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-459.99), 0.17, (-869.11)]), lua.Table.create([(-14.86), (-21.33), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(9, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([(-460.26), 0.37, (-868.42)]), lua.Table.create([(-14.86), (-21.33), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(9, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_105_001_talk_01", "sub_105", "npc_sub105_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub105_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_105_001_talk_03", "sub_105", "npc_sub105_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-459.29), 0.23, (-869.5)]), lua.Table.create([(-4.46), (-24.46), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([(-458.96), 0.28, (-870.23)]), lua.Table.create([(-4.46), (-24.46), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_S");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub105_001", "surprise_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_105_001_talk_04", "sub_105", "npc_sub105_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-460.26), 0.37, (-868.42)]), lua.Table.create([(-14.86), (-21.33), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub105_001", "sad");
        var npcAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub105_001", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_105_001_talk_05", "sub_105", "npc_sub105_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_105_001_talk_06", "sub_105", "npc_sub105_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcAnimation);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub105_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub105_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_105_001_talk_07", "sub_105", "npc_sub105_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0105");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
    }
}
