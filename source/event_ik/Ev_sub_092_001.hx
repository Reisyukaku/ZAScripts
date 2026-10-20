package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C181D9BAB6C47B81C")
@:expose("C181D9BAB6C47B81C")
class Ev_sub_092_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub092_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -875.14, 0.16, -221.63, 144.79);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub092_001", -874.87, 0.16, -222.87, -3.73);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub092_1", -873.31, 0.72, -222.74, -44.64);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub092_2", -873.74, 0.59, -223.24, -44.64);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub092_3", -872.81, 0.86, -222.03, -44.64);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub092_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub092_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-875.09, 1.63, -220.38]), lua.Table.create([-7.74, 26.35, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-874.37, 1.63, -220.74]), lua.Table.create([-7.74, 26.35, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub092_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_092_001_talk_01", "sub_092", "npc_sub092_001");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_092_001_select_01", "msg_Ev_sub_092_001_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub092_001", 174);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub092_001", "npc_pokemon_sub092_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub092_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-873.94, 0.8, -222.18]), lua.Table.create([-1.21, -10.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub092_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub092_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub092_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub092_2", 17);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-873.24, 1.24, -220.75]), lua.Table.create([-1.21, -10.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub092_1", 16);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub092_3", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_092_001_talk_02", "sub_092", "npc_sub092_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-874.54, 1.57, -221.62]), lua.Table.create([-0.61, 14.77, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub092_001", "battle");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub092_001", 175);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([-874.67, 1.66, -222.12]), lua.Table.create([-0.61, 14.77, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_092_001_talk_03", "sub_092", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub092_001", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_092_001_talk_04", "sub_092", "npc_sub092_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-874.52, 1.63, -219.53]), lua.Table.create([-15.39, -7.6, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(8.0, lua.Table.create([-874.61, 1.82, -218.81]), lua.Table.create([-15.39, -7.6, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub092_001", 2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub092_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub092_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub092_001", "npc_pokemon_sub092_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub092_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_092_001_talk_05", "sub_092", "npc_sub092_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub092_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_092_001_talk_06", "sub_092", "npc_sub092_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_092_001_talk_07", "sub_092", "npc_sub092_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-874.12, 1.58, -220.47]), lua.Table.create([-7.47, 29.09, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub092_001", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub092_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub092_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_092_001_talk_08", "sub_092", "npc_sub092_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_092_001_talk_09", "sub_092", "npc_sub092_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-874.93, 1.6, -221.91]), lua.Table.create([0.0, -3.73, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-874.92, 1.65, -222.11]), lua.Table.create([0.0, -3.73, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub092_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub092_001", "surprise_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub092_001", 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_092_001_talk_10", "sub_092", "npc_sub092_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_092_001_talk_11", "sub_092", "npc_sub092_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0092");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub092_001", "lose");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub092_001", 175);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.35, lua.Table.create([-874.92, 1.65, -222.11]), lua.Table.create([-0.0, -3.73, 20.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_092_001_talk_12", "sub_092");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub092_001", "normal");
    }
}
