package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C8F043C03A95D7934")
@:expose("C8F043C03A95D7934")
class Ev_sub_107_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_pokemon_sub107_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var npcAdult01AM03Id:Dynamic = untyped lua.abi.Host.concat(Std.string("dyn_"), Std.string("npc_adult01_a_m_03"));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(npcAdult01AM03Id, lua.Table.create([(-43.93), 19.36, (-477.25)]), 50.85, "npc_adult01_a_m_03");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("npc_pokemon_sub107_1"));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-39.9), 19.38, (-474.46), (-59.41));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub107_1", (-41.28), 19.35, (-473.64), 109.64);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub107_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub107_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_adult01_a_m_03", (-44.0), 19.36, (-476.94), 38.9);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-39.63), 21.29, (-475.98)]), lua.Table.create([(-30.5), 153.79, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 20);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub107_1", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_107_020_sys_01", "sub_107");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_107_020_talk_01", "sub_107", npcAdult01AM03Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub107_1", npcAdult01AM03Id, "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", npcAdult01AM03Id, "head");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_adult01_a_m_03", (-41.76), 19.36, (-475.67), 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcAdult01AM03Id, "smile_bitter", "npc_adult01_a_m_03");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-37.22), 20.8, (-474.58)]), lua.Table.create([(-11.95), 92.21, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_107_020_talk_02", "sub_107", npcAdult01AM03Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var playerAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcAdult01AM03Id, "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-40.36), 19.38, (-474.27), (-60.85));
        var npcPokemonSub1071Placement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub107_1", (-40.96), 19.35, (-473.83), 106.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("Player", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-41.53), 21.26, (-476.98)]), lua.Table.create([(-23.03), (-171.15), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcPokemonSub1071Placement);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub107_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub107_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub107_1", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_107_020_talk_08", "sub_107");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcAdult01AM03Id, "surprise_mc", "npc_adult01_a_m_03");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_107_020_talk_09", "sub_107", npcAdult01AM03Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(npcAdult01AM03Id, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(npcAdult01AM03Id, true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-40.52), 20.74, (-475.17)]), lua.Table.create([(-1.56), 71.32, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcAdult01AM03Id, 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_107_020_talk_10", "sub_107", npcAdult01AM03Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Ang_To_Obj("Player", npcAdult01AM03Id);
        main.event.ik.command.IkScriptCommand.FObj_Set_Ang_To_Obj("npc_pokemon_sub107_1", npcAdult01AM03Id);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", npcAdult01AM03Id, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub107_1", npcAdult01AM03Id, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-41.36), 21.5, (-477.75)]), lua.Table.create([(-24.68), (-170.77), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_107_020_talk_11", "sub_107", npcAdult01AM03Id);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcAdult01AM03Id, 28);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcAdult01AM03Id, "normal", "npc_adult01_a_m_03");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_107_020_talk_12", "sub_107", npcAdult01AM03Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub107_1", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub107_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub107_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-41.81), 21.13, (-476.69)]), lua.Table.create([(-21.19), (-154.46), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(npcAdult01AM03Id, false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_107_020_talk_13", "sub_107", npcAdult01AM03Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub107_1", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub107_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub107_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0107");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal");
    }
}
