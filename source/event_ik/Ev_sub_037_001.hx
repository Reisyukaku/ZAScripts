package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C4EB091826F55D209")
@:expose("C4EB091826F55D209")
class Ev_sub_037_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub037_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:String = "ef_line";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -254.21, 0.09, -276.41, 36.11);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub037_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub037_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub037_001");
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_sub037_001", 2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-255.31, 1.43, -276.1]), lua.Table.create([0.0, -115.37, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(0, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-254.79, 1.43, -275.85]), lua.Table.create([0.0, -115.37, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(0, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.24, 1.53, -275.59]), lua.Table.create([0.0, -115.37, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub037_001", "unique2");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH01");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_037_001_talk_01", "sub_037", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub037_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub037_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_037_001_talk_02", "sub_037", "npc_sub037_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub037_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub037_001", 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_037_001_talk_04", "sub_037", "npc_sub037_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0037");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub037_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub037_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_037_001_talk_05", "sub_037", "npc_sub037_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
    }
}
