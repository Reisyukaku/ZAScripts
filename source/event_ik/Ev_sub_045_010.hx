package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CD390368C8E45AC7A")
@:expose("CD390368C8E45AC7A")
class Ev_sub_045_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub045_001", "npc_pokemon_sub045_1", "npc_pokemon_sub045_2", "npc_pokemon_sub045_3"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_SKILLS_MUTE_T500");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub045_001", (-512.62), 0.15, (-982.67), (-92.09));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub045_001", lua.Table.create([(-515.56), 0.15, (-982.69)]));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-513.45), 1.4, (-982.43)]), lua.Table.create([13.02, (-71.72), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.SDF7733B3BCABC76A("npc_sub045_001", "surprise_mc");
        var npcSub045001Animation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub045_001", 21);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_045_010_talk_02", "sub_045", "npc_sub045_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcSub045001Animation);
        main.event.ik.command.IkScriptCommand.SDF7733B3BCABC76A("npc_sub045_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub045_001", 174);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-512.89), 0.16, (-979.58), (-169.47));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub045_001", (-512.53), 0.15, (-981.21), (-100.54));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub045_3", (-516.1), 0.14, (-980.94), 161.61);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub045_2", (-513.84), 0.15, (-982.18), (-67.12));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub045_1", (-513.94), 0.15, (-983.65), (-72.25));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub045_2", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub045_001", false);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub045_001", "normal");
        var effectKey:Dynamic = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-510.89), 2.62, (-978.22)]), lua.Table.create([(-22.82), 46.03, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.15);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.35, lua.Table.create([(-512.94), 1.42, (-980.2)]), lua.Table.create([(-22.82), 46.03, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub045_1", 34);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub045_2", 34);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub045_3", 34);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_045_010_talk_04", "sub_045", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub045_001", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-513.45), 1.46, (-981.04)]), lua.Table.create([7.67, (-75.54), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub045_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_045_010_talk_05", "sub_045", "npc_sub045_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub045_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_045_010_talk_06", "sub_045", "npc_sub045_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub045_001", "normal");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-511.89), 2.0, (-978.63)]), lua.Table.create([(-21.01), 34.96, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub045_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.6);
        var npcSub045001Turn:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub045_001", "Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub045_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcSub045001Turn);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub045_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub045_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_045_010_talk_07", "sub_045", "npc_sub045_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub045_001", "npc_pokemon_sub045_2", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub045_001", 18);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub045_2", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_045_010_talk_08", "sub_045", "npc_sub045_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_pokemon_sub045_1");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_pokemon_sub045_2");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_pokemon_sub045_3");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-512.2), 2.16, (-980.2)]), lua.Table.create([(-31.86), 46.85, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcSub045001Turn);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub045_001", 20);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub045_1", "npc_sub045_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub045_2", "npc_sub045_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub045_3", "npc_sub045_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_045_010_talk_09", "sub_045", "npc_sub045_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub045_1", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub045_2", 17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub045_3", 16);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0045");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_SKILLS_RESET_T500");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
