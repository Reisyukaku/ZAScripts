package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C829A7D4924A4F8F7")
@:expose("C829A7D4924A4F8F7")
class Ev_sub_062_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_sub062_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub062_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub062_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub062_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub062_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub062_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub062_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_062_001_talk_01", "sub_062", "npc_sub062_001");
        var animationHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub062_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_062_001_talk_02", "sub_062", "npc_sub062_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_062_001_talk_03", "sub_062", "npc_sub062_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub062_001", "sad");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub062_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_062_001_talk_04", "sub_062", "npc_sub062_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub062_001", 3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub062_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub062_001", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_062_001_talk_05", "sub_062", "npc_sub062_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub062_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub062_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub062_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_062_001_talk_06", "sub_062", "npc_sub062_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub062_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_062_001_talk_07", "sub_062", "npc_sub062_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub062_001", "confident");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub062_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_062_001_talk_08", "sub_062");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0062");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub062_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub062_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_062_001_talk_09", "sub_062", "npc_sub062_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
