package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C7222BD22F31F724A")
@:expose("C7222BD22F31F724A")
class Ev_sub_102_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub102_001", "npc_pokemon_sub102_2"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -55.03, 0.15, -361.96, 172.82);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub102_001", -54.64, 0.14, -363.18, -18.7);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub102_2", -55.33, 1.45, -363.48, 3.24);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub102_2");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub102_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub102_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub102_2", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-53.15, 2.15, -360.81]), lua.Table.create([3.05, 45.7, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-53.15, 1.25, -360.81]), lua.Table.create([3.05, 45.7, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_001_talk_02", "sub_102", "npc_sub102_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-54.45, 1.89, -361.99]), lua.Table.create([-6.25, 18.2, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub102_001", "npc_pokemon_sub102_2", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_001_talk_03", "sub_102", "npc_sub102_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_001_talk_04", "sub_102", "npc_sub102_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub102_2", 16);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-53.51, 2.13, -363.85]), lua.Table.create([-18.55, 130.11, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub102_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_001_talk_06", "sub_102", "npc_sub102_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_001_talk_07", "sub_102", "npc_sub102_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-54.82, 1.93, -361.87]), lua.Table.create([-5.29, 17.76, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-55.01, 1.88, -362.45]), lua.Table.create([-5.29, 17.76, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub102_2", "npc_sub102_001", "head");
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("npc_pokemon_sub102_2", 8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_001_talk_14", "sub_102");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-54.15, 1.39, -361.8]), lua.Table.create([13.48, 22.09, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-54.28, 1.5, -362.11]), lua.Table.create([13.48, 22.09, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub102_001", "sad");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub102_001", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_001_talk_08", "sub_102", "npc_sub102_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_001_talk_09", "sub_102", "npc_sub102_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub102_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub102_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_001_talk_10", "sub_102", "npc_sub102_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-53.15, 1.25, -360.81]), lua.Table.create([3.05, 45.7, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub102_2", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_001_talk_12", "sub_102", "npc_sub102_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_001_talk_13", "sub_102", "npc_sub102_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub102_2", "npc_sub102_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0102");
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("npc_pokemon_sub102_2", 11);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_001_talk_15", "sub_102");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
    }
}
