package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CA41C4B1FBE2D1B03")
@:expose("CA41C4B1FBE2D1B03")
class Ev_sub_080_001 extends BaseSubQuest
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
        var effectKey:String = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-266.44), 0.07, (-183.75), 18.86);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_001", (-266.04), 0.06, (-182.11), (-168.77));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_002", (-266.02), 0.05, (-180.52), (-174.12));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_003", (-264.74), 0.06, (-180.86), (-154.82));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-266.58), 1.58, (-182.7)]), lua.Table.create([(-3.73), (-136.77), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_080_001_talk_01", "sub_080", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-267.4), 1.47, (-184.4)]), lua.Table.create([(-3.73), (-136.77), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_080_001_talk_02", "sub_080", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_080_001_talk_03", "sub_080", "npc_sub078_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_080_001_talk_04", "sub_080", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-267.59), 1.5, (-183.78)]), lua.Table.create([(-3.73), (-136.77), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([(-266.58), 1.58, (-182.7)]), lua.Table.create([(-3.73), (-136.77), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_L");
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_001", "anger_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_080_001_talk_05", "sub_080", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_CameraShake();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-267.4), 1.47, (-184.4)]), lua.Table.create([(-3.73), (-136.77), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_080_001_talk_06", "sub_080", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_080_001_talk_07", "sub_080", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0080");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_001", (-266.31), 0.06, (-182.94), 166.28);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_002", (-266.33), 0.06, (-180.39), (-173.62));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_003", (-264.77), 0.06, (-180.76), (-155.82));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
