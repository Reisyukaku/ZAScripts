package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CEF0C060D33A3063B")
@:expose("CEF0C060D33A3063B")
class Ev_sub_053_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub053_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_PM_FX_MUTE_T1000");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt)("npc_sub053_001", "Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt)("Player", "npc_sub053_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("Player", "npc_sub053_001", "head");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_sub053_001", "Player", "head");
        untyped (untyped main.event.ik.command.IkScriptCommand.Camera_Easy_Normal)("Player", "npc_sub053_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        untyped (untyped main.event.ik.command.IkScriptCommand.S522136910C73A819)("Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.S522136910C73A819)("npc_sub053_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_sub053_001", 22);
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_053_001_talk_01", "sub_053", "npc_sub053_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_053_001_talk_02", "sub_053", "npc_sub053_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("Player", false);
        untyped (untyped main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template)("npc_sub053_001", 3);
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_053_001_talk_03", "sub_053", "npc_sub053_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_sub053_001", "rejoice_small_mc");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_sub053_001", 174);
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_053_001_talk_04", "sub_053", "npc_sub053_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("Player", true);
        untyped (untyped main.event.ik.command.IkScriptCommand.Camera_Easy_Normal)("Player", "npc_sub053_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.2);
        untyped (untyped main.event.ik.command.IkScriptCommand.PlayQuestOrderUI)("sub_0053");
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.2);
        untyped (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_sub053_001", "normal");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_sub053_001", 174);
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_053_001_talk_05", "sub_053", "npc_sub053_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        untyped (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", 0.25);
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_Fade)();
    }
}
