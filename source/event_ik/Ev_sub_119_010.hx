package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CA2EE7BB4B8D4E3EC")
@:expose("CA2EE7BB4B8D4E3EC")
class Ev_sub_119_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_detective", "npc_pokemon_moko_2"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-397.43), 0.33, (-329.2)]), lua.Table.create([2.04, 98.42, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-397.55), 0.33, (-329.96)]), lua.Table.create([2.04, 98.42, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-402.4), 0.02, (-327.74), 147.78);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_detective", (-402.65), 0.0, (-328.95), 95.59);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_moko_2", (-399.9), (-0.01), (-330.04), 127.08);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_moko_2", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "npc_pokemon_moko_2", "head");
        main.event.ik.command.IkScriptCommand.CreateRotomPhoneLooseWait("npc_main_detective", "ob0004_00_normal_07");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_moko_2", 27);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_010_talk_01", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_010_talk_02", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-401.22), 1.43, (-327.25)]), lua.Table.create([(-5.06), 50.52, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.WaitCreateRotomPhone("npc_main_detective");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("npc_main_detective");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("npc_main_detective");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_010_talk_03", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_010_talk_04", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_010_talk_05", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("npc_main_detective");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("npc_main_detective");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_detective", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-402.01), 1.53, (-329.74)]), lua.Table.create([(-8.44), 155.61, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_010_talk_06", "sub_119", "npc_main_detective");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_119_010_select_01", "msg_Ev_sub_119_010_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_010_talk_09", "sub_119", "npc_main_detective");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_119_010_select_03", "msg_Ev_sub_119_010_select_04"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-402.11), 1.42, (-328.25)]), lua.Table.create([(-1.6), 37.2, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_010_talk_10", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_010_talk_11", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_010_talk_12", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-397.55), 0.33, (-329.96)]), lua.Table.create([2.04, 98.42, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_moko_2", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "npc_pokemon_moko_2", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_moko_2", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "npc_pokemon_moko_2", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_pokemon_moko_2");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_detective", "npc_pokemon_moko_2");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_010_talk_13", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_010_talk_14", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_pokemon_moko_2");
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("npc_pokemon_moko_2", 5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_010_talk_15", "sub_119", "npc_pokemon_moko_2");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_moko_2", 17);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-398.74), 0.17, (-330.19)]), lua.Table.create([2.04, 98.42, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_119_010_talk_16", "sub_119", "npc_pokemon_moko_2", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([(-398.33), 0.17, (-330.27)]), lua.Table.create([2.04, 98.42, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_moko_2", (-394.04), (-0.01), (-334.67), 127.08);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-401.29), 1.35, (-327.18)]), lua.Table.create([(-2.8), 51.73, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_010_talk_17", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
