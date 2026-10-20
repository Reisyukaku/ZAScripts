package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C7F04BA4E84CA3352")
@:expose("C7F04BA4E84CA3352")
class Ev_sub_003_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub03_0002"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -511.92, 0.15, -126.25, -144.64);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub03_0002", -512.52, 0.15, -127.17, 35.28);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub03_0002", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_sub03_0002");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub03_0002", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub03_0002", "Player", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub03_0002", "sad");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-510.56, 1.48, -126.06]), lua.Table.create([-3.36, 70.17, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_ev_sub_003_talk_01", "sub_003", "npc_sub03_0002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_ev_sub_003_talk_02", "sub_003", "npc_sub03_0002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-502.81, 3.36, -126.75]), lua.Table.create([-14.11, 96.9, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-502.81, 8.81, -126.75]), lua.Table.create([-14.11, 96.9, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub03_0002", "anger");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_ev_sub_003_talk_03", "sub_003", "npc_sub03_0002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_ev_sub_003_talk_04", "sub_003", "npc_sub03_0002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-510.56, 1.48, -126.06]), lua.Table.create([-3.36, 70.17, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub03_0002", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub03_0002", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_ev_sub_003_talk_05", "sub_003", "npc_sub03_0002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0003");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-511.7, 1.66, -126.85]), lua.Table.create([-3.36, 70.17, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_ev_sub_003_talk_06", "sub_003", "npc_sub03_0002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
