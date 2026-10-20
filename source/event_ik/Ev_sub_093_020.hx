package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C90E46084C9D66B3E")
@:expose("C90E46084C9D66B3E")
class Ev_sub_093_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_sub093_001", "npc_pokemon_sub093_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-208.62), 18.92, (-438.33), 44.64);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub093_1", (-207.27), 18.92, (-436.46), (-154.2));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub093_001", (-212.09), 18.91, (-437.59), 100.45);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub093_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub093_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-209.49), 20.73, (-439.25)]), lua.Table.create([(-24.84), (-114.86), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([(-209.83), 20.73, (-438.52)]), lua.Table.create([(-24.84), (-114.86), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub093_1", 20);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_093_020_talk_01", "sub_093");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_093_020_select_01", "msg_Ev_sub_093_020_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub093_001", (-209.5), 18.91, (-437.71), 0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub093_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-207.43), 19.58, (-434.5)]), lua.Table.create([0.47, 12.28, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_093_020_talk_02", "sub_093", "npc_sub093_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub093_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_093_020_talk_03", "sub_093", "npc_sub093_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub093_001", "npc_pokemon_sub093_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_093_020_talk_04", "sub_093", "npc_sub093_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub093_1", "npc_sub093_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub093_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-208.7), 20.08, (-436.79)]), lua.Table.create([9.31, 39.25, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([(-208.91), 20.22, (-437.04)]), lua.Table.create([9.31, 39.25, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        var turnHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub093_001", "npc_pokemon_sub093_1");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub093_1", "npc_sub093_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub093_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_093_020_talk_05", "sub_093", "npc_sub093_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub093_001", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub093_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_093_020_talk_06", "sub_093", "npc_sub093_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-209.67), 19.46, (-436.35)]), lua.Table.create([(-0.32), (-73.97), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([(-209.17), 19.46, (-436.02)]), lua.Table.create([(-0.32), (-73.98), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub093_1", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_093_020_talk_07", "sub_093", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-211.45), 20.81, (-437.4)]), lua.Table.create([(-20.95), (-88.88), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub093_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_093_020_talk_08", "sub_093", "npc_sub093_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-207.93), 18.92, (-438.77), (-35.2));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub093_001", (-209.5), 18.91, (-437.71), 125.17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub093_1", (-209.23), 18.92, (-436.77), 147.97);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub093_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub093_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub093_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub093_001", 2);
        main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-208.18), 21.22, (-441.26)]), lua.Table.create([(-3.63), 172.23, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([(-208.18), 19.97, (-441.26)]), lua.Table.create([(-3.63), 172.23, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub093_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_093_020_talk_09", "sub_093", "npc_sub093_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub093_001", "npc_pokemon_sub093_1", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_093_020_talk_10", "sub_093", "npc_sub093_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub093_001", "Player", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub093_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub093_001", 174);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub093_001", 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_093_020_talk_11", "sub_093", "npc_sub093_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub093_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub093_1", 17);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0093");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub093_001", "normal");
    }
}
