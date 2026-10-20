package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C2365E22561C1E9D2")
@:expose("C2365E22561C1E9D2")
class Ev_sub_050_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub050_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub050_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub050_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub050_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub050_001", "head");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub050_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub050_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_050_001_talk_01", "sub_050", "npc_sub050_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub050_001", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_050_001_talk_02", "sub_050", "npc_sub050_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_050_001_talk_03", "sub_050", "npc_sub050_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0050");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub050_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_050_001_talk_04", "sub_050", "npc_sub050_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
    }
}
