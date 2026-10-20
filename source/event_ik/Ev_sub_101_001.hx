package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CEA60BEF2C392B813")
@:expose("CEA60BEF2C392B813")
class Ev_sub_101_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub101_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_PM_FX_MUTE_T1000");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("Player", 1);
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt)("npc_sub101_001", "Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt)("Player", "npc_sub101_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        untyped (untyped main.event.ik.command.IkScriptCommand.S522136910C73A819)("Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.S522136910C73A819)("npc_sub101_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("Player", false);
        untyped (untyped main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template)("npc_sub101_001", 7);
        untyped (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_sub101_001", "serious");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_101_001_talk_01", "sub_101", "npc_sub101_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_sub101_001", 174);
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_CloseEye)("npc_sub101_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_101_001_talk_02", "sub_101", "npc_sub101_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_sub101_001", "normal");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_101_001_talk_03", "sub_101", "npc_sub101_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("Player", true);
        untyped (untyped main.event.ik.command.IkScriptCommand.Camera_Easy_Normal)("Player", "npc_sub101_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_101_001_talk_06", "sub_101", "npc_sub101_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_sub101_001", 175);
        untyped (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_sub101_001", "anger_mc");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_101_001_talk_09", "sub_101", "npc_sub101_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_sub101_001", 174);
        untyped (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_sub101_001", "serious");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_101_001_talk_07", "sub_101", "npc_sub101_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped main.event.ik.command.IkScriptCommand.PlayQuestOrderUI)("sub_0101");
        untyped (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_PM_FX_RESET_T3000");
        untyped (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", 0.25);
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_Fade)();
    }
}
