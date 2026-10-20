package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CE76D100C95C64F84")
@:expose("CE76D100C95C64F84")
class Ev_sub_089_070 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub089_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-205.73), 1.51, (-863.53)]), lua.Table.create([(-2.36), 169.34, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-205.7), 0.11, (-862.44), (-47.86));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub089_001", (-206.7), 0.11, (-861.36), 133.77);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub089_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub089_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub089_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub089_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_089_020_talk_01", "sub_089", "npc_sub089_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_089_020_talk_02", "sub_089", "npc_sub089_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub089_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub089_001", "confident");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_089_020_talk_03", "sub_089", "npc_sub089_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_ITEM_GET_KEY");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_089_020_sys_01", "sub_089");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub089_001", 20);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub089_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_089_020_talk_05", "sub_089", "npc_sub089_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0089");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
