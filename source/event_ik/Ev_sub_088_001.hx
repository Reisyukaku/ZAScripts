package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C1BC36924C3E21EAB")
@:expose("C1BC36924C3E21EAB")
class Ev_sub_088_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_pa_leader"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var animationHandle:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_pa_leader", 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -753.58, 0.79, -82.05, -35.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_pa_leader", -754.44, 0.8, -80.55, 139.74);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_pa_leader", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_pa_leader", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-753.68, 2.24, -83.31]), lua.Table.create([-6.85, 176.12, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_088_001_talk_01", "sub_088", "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_088_001_talk_02", "sub_088", "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0088");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-754.16, 2.24, -83.34]), lua.Table.create([-6.85, 176.12, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_pa_leader", -755.93, 1.51, -77.93, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_RICHISSIME_OP");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
