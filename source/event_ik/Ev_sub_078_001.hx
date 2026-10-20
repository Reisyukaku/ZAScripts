package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C85A7424922DC58BC")
@:expose("C85A7424922DC58BC")
class Ev_sub_078_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub078_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:Dynamic = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-688.66), (-5.34), (-546.12), 78.58);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_001", (-687.11), (-5.34), (-545.6), (-107.81));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_002", (-685.45), (-5.35), (-544.77), (-123.59));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_003", (-685.35), (-5.34), (-545.86), (-96.05));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_001", "anger_mc");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-687.91), (-3.82), (-545.48)]), lua.Table.create([(-3.76), (-80.37), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_078_001_talk_01", "sub_078", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var angerAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_001", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_078_001_talk_02", "sub_078", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(angerAnimation);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-689.65), (-3.91), (-545.73)]), lua.Table.create([(-3.76), (-80.37), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var resetAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub078_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_078_001_talk_03", "sub_078", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_078_001_talk_04", "sub_078", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_078_001_talk_05", "sub_078", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_078_001_talk_06", "sub_078", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimation);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-688.9), (-3.88), (-545.32)]), lua.Table.create([(-3.76), (-80.37), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([(-687.84), (-3.81), (-545.51)]), lua.Table.create([(-3.76), (-80.37), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_L");
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_001", "anger_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_078_001_talk_07", "sub_078", "npc_sub078_001", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_CameraShake();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-689.65), (-3.91), (-545.73)]), lua.Table.create([(-3.76), (-80.37), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_078_001_talk_08", "sub_078", "npc_sub078_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_078_001_talk_09", "sub_078", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0078");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_001", (-687.78), (-5.34), (-546.43), 62.93);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_002", (-686.11), (-5.34), (-544.68), (-152.09));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_003", (-685.28), (-5.34), (-545.8), (-109.05));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
