package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C59367C2776953AA4")
@:expose("C59367C2776953AA4")
class Ev_sub_056_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_sub056_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub056_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub056_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub056_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub056_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub056_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub056_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub056_001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_056_001_talk_01", "sub_056", "npc_sub056_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub056_1", 27);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-389.9, 0.57, -367.97]), lua.Table.create([8.13, -94.76, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([-389.39, 0.77, -367.93]), lua.Table.create([8.13, -94.76, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub056_001", -392.18, 0.0, -369.42, 74.93);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -393.35, 0.01, -370.9, 53.34);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_056_001_talk_02", "sub_056", "npc_sub056_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_pokemon_sub056_1");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub056_1", 17));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-394.76, 1.56, -371.1]), lua.Table.create([-14.33, -111.2, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub056_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub056_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub056_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_056_001_talk_03", "sub_056", "npc_sub056_001");
        var animationHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub056_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_056_001_talk_04", "sub_056", "npc_sub056_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub056_001", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_056_001_talk_05", "sub_056", "npc_sub056_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-389.13, 1.39, -366.77]), lua.Table.create([-2.59, -78.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.5, lua.Table.create([-388.37, 1.5, -366.89]), lua.Table.create([-2.59, -78.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub056_1", 16);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0056");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
