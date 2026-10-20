package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C3167933AB1BECC51")
@:expose("C3167933AB1BECC51")
class Ev_sub_060_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub060_001", "npc_pokemon_sub060_2"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub060_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub060_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub060_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub060_2", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub060_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub060_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub060_001", "smile");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_001_talk_01", "sub_060", "npc_sub060_001");
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub060_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub060_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_001_talk_02", "sub_060", "npc_sub060_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub060_001", "confident");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub060_001", "npc_pokemon_sub060_2", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub060_2", "npc_sub060_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_001_talk_05", "sub_060", "npc_sub060_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub060_2", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_001_talk_06", "sub_060");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub060_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub060_2", "Player", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub060_001", "smile");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_001_talk_03", "sub_060", "npc_sub060_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub060_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub060_001", "confident");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_001_talk_04", "sub_060", "npc_sub060_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0060");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped (lua.abi.Host.global("c5090F7B8"))["f92941AC0"]("flag_t3_LadderReplace", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
    }
}
