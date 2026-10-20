package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C64B1D8CCAE69733B")
@:expose("C64B1D8CCAE69733B")
class Ev_sub_109_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub109_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T500");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -147.02, 0.02, -255.06, -156.03);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub109_001", -147.75, 0.14, -256.72, 13.55);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_sub109_001");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("HITOMOSI", lua.Table.create([-140.71, 0.0, -267.16]), -33.63, 607, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub109_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub109_001", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub109_001", "sad");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-147.08, 1.52, -255.93]), lua.Table.create([-26.62, 42.29, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub109_001", 32, null, 3.75);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_109_001_talk_01", "sub_109", "npc_sub109_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_109_001_talk_08", "sub_109", "npc_sub109_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-145.86, 1.76, -254.66]), lua.Table.create([-21.61, 57.23, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_109_001_talk_02", "sub_109", "npc_sub109_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub109_001", lua.Table.create([-147.02, 0.02, -255.06]));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub109_001", 175);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub109_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_109_001_talk_06", "sub_109", "npc_sub109_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub109_001", "serious");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub109_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub109_001", 32, null, 3.75);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_109_001_talk_07", "sub_109", "npc_sub109_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("HITOMOSI", 12);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_109_001_talk_09", "sub_109");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "HITOMOSI", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub109_001", "HITOMOSI", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub109_001", 21));
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub109_001");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-147.1, 1.33, -251.78]), lua.Table.create([-5.79, -6.84, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-146.7, 1.22, -252.87]), lua.Table.create([-5.79, -6.84, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub109_001", "HITOMOSI");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "HITOMOSI");
        main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FIELD_VOL_ON");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-140.84, 0.4, -264.9]), lua.Table.create([-5.07, -2.97, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-140.81, 0.35, -265.52]), lua.Table.create([-5.07, -2.97, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("HITOMOSI", 17);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("HITOMOSI", 16);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_SUB_109_DISAPPEARANCE", lua.Table.create([-140.71, 0.0, -267.16]));
        var visibilityPulse1:Dynamic = 0;
        while (visibilityPulse1 < 9)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("HITOMOSI", false);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("HITOMOSI", true);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            visibilityPulse1 = untyped visibilityPulse1 + 1;
        };
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("HITOMOSI", false);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("HITOMOSI", -139.48, 0.0, -270.28, -33.63);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("HITOMOSI", 16);
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_SUB_109_APPEARANCE", lua.Table.create([-139.48, 0.0, -270.28]));
        var visibilityPulse2:Dynamic = 0;
        while (visibilityPulse2 < 9)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("HITOMOSI", true);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("HITOMOSI", false);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            visibilityPulse2 = untyped visibilityPulse2 + 1;
        };
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("HITOMOSI", true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("HITOMOSI", 20);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("HITOMOSI", -138.35, 0.0, -272.79, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_SUB_109_DISAPPEARANCE", lua.Table.create([-138.35, 0.0, -272.79]));
        var visibilityPulse3:Dynamic = 0;
        while (visibilityPulse3 < 9)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("HITOMOSI", false);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("HITOMOSI", true);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            visibilityPulse3 = untyped visibilityPulse3 + 1;
        };
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("HITOMOSI");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("HITOMOSI", false);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("HITOMOSI", -133.01, -0.0, -284.93, -33.63);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("HITOMOSI");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("HITOMOSI", 31);
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_SUB_109_APPEARANCE", lua.Table.create([-133.01, -0.0, -284.93]));
        var visibilityPulse4:Dynamic = 0;
        while (visibilityPulse4 < 9)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("HITOMOSI", true);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("HITOMOSI", false);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            visibilityPulse4 = untyped visibilityPulse4 + 1;
        };
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("HITOMOSI", true);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FIELD_VOL_OFF");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-144.9, 1.36, -254.09]), lua.Table.create([-7.6, 33.43, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-145.56, 1.36, -253.65]), lua.Table.create([-7.6, 33.43, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub109_001", "anger_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub109_001", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_109_001_talk_10", "sub_109", "npc_sub109_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub109_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub109_001", "Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub109_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub109_001", 32, null, 3.75);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_109_001_talk_11", "sub_109", "npc_sub109_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0109");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub109_001", "HITOMOSI", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "HITOMOSI", "head");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_A03_z02_05_0007", true);
    }
}
