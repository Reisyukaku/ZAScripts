package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CE13F2F7245DEA73D")
@:expose("CE13F2F7245DEA73D")
class Ev_sub_027_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_pokemon_sub027_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T500");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-618.36), 0.17, (-880.53), (-87.63));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub027_2", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub027_1", false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("npc_sub027", lua.Table.create([(-621.61), 0.17, (-884.16)]), 26.97, "npc_adult02_a_f_00");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("DERIBAADO", lua.Table.create([(-620.25), 0.16, (-880.58)]), 93.57, 225, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub027", false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "DERIBAADO", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("DERIBAADO", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-617.34), 1.74, (-881.57)]), lua.Table.create([(-16.83), 122.16, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T500");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("DERIBAADO", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_027_020_talk_01", "sub_027", "DERIBAADO");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-618.54), 1.14, (-881.03)]), lua.Table.create([(-16.83), 105.67, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-618.87), 1.04, (-880.94)]), lua.Table.create([(-16.83), 105.67, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("DERIBAADO", 44);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_027_020_talk_03", "sub_027", "DERIBAADO", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.StartItemGetSequenceAuto();
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_027_020_sys_01", "sub_027");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub027", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub027", (-620.36), 0.17, (-881.73), 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-617.28), 1.6, (-881.09)]), lua.Table.create([(-13.75), 104.91, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-616.71), 1.77, (-881.6)]), lua.Table.create([(-13.75), 104.91, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub027", "DERIBAADO", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub027", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("DERIBAADO", "npc_sub027", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("DERIBAADO", "npc_sub027");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_027_020_talk_04", "sub_027", "npc_sub027");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub027", 2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub027", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_027_020_talk_05", "sub_027", "npc_sub027");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("DERIBAADO", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("DERIBAADO", "Player");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-619.07), 0.34, (-879.87)]), lua.Table.create([20.01, 50.04, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_027_020_talk_06", "sub_027", "npc_sub027");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub027", 1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub027", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_027_020_talk_07", "sub_027", "npc_sub027");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub027", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_027_020_talk_08", "sub_027", "npc_sub027");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-616.71), 1.77, (-881.6)]), lua.Table.create([(-13.75), 104.91, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub027", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_027_020_talk_09", "sub_027", "npc_sub027");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-619.07), 1.45, (-880.83)]), lua.Table.create([(-34.1), 103.62, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("DERIBAADO", 16);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_027_020_talk_02", "sub_027", "DERIBAADO");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0027");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
