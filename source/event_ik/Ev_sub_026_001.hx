package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C01A7DC9F669CCD7F")
@:expose("C01A7DC9F669CCD7F")
class Ev_sub_026_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = [];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("npc_sub026_001", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub026_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub026_001");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub026_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub026_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_026_001_talk_01", "sub_026", "npc_sub026_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub026_001", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_026_001_talk_02", "sub_026", "npc_sub026_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -317.85, 0.03, -286.5, -101.02);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub026_001", -318.36, 0.14, -287.57, 27.39);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-320.23, 0.73, -284.3]), lua.Table.create([-7.51, 13.19, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub026_4", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub026_2", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub026_3", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_026_001_talk_04", "sub_026");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_026_001_talk_05", "sub_026", "npc_sub026_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-316.44, 1.77, -287.31]), lua.Table.create([-14.98, 100.24, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub026_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub026_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_sub026_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub026_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_026_001_talk_06", "sub_026", "npc_sub026_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_026_001_talk_07", "sub_026", "npc_sub026_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_026_001_talk_08", "sub_026", "npc_sub026_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0026");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_026_001_talk_09", "sub_026", "npc_sub026_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
