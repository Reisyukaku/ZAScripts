package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C61198F57653F92D2")
@:expose("C61198F57653F92D2")
class Ev_sub_022_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub022_001", "npc_pokemon_sub022_1", "npc_pokemon_sub022_2"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub022_2", false);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -307.49, 0.01, -223.06, -47.57);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub022_1", -308.42, 0.06, -220.73, 165.25);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub022_001", -309.4, 0.0, -221.53, 128.69);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub022_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub022_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub022_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-307.62, 2.17, -224.74]), lua.Table.create([-14.0, 167.04, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-307.62, 1.57, -224.74]), lua.Table.create([-14.0, 167.04, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub022_001", 18);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub022_001", "smile");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_022_020_talk_01", "sub_022", "npc_sub022_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub022_001", "npc_pokemon_sub022_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.25);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-309.04, 2.3, -222.67]), lua.Table.create([-45.99, -176.85, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub022_1", "npc_sub022_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub022_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub022_001", "npc_pokemon_sub022_1");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub022_001", 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub022_001", 33, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_022_020_talk_04", "sub_022", "npc_sub022_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub022_1", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_022_020_talk_06", "sub_022", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub022_001", 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_022_020_talk_07", "sub_022", "npc_sub022_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-307.62, 1.57, -224.74]), lua.Table.create([-14.0, 167.04, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub022_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub022_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub022_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub022_001", "Player");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub022_001", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_022_020_talk_08", "sub_022", "npc_sub022_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub022_001", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.StartItemGetSequenceAuto();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub022_001", "npc_pokemon_sub022_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.45);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub022_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.35);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub022_1", "npc_sub022_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub022_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_022_020_talk_09", "sub_022", "npc_sub022_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub022_1", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0022");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
