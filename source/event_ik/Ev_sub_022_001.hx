package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C6112845765396173")
@:expose("C6112845765396173")
class Ev_sub_022_001 extends BaseSubQuest
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
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub022_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub022_001");
        var effectKey:String = "ef_line";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub022_001");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH01");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub022_001", 6);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub022_001", "anger");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub022_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_022_001_talk_01", "sub_022", "npc_sub022_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub022_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub022_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub022_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub022_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub022_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_022_001_talk_03", "sub_022", "npc_sub022_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub022_001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_022_001_talk_04", "sub_022", "npc_sub022_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub022_001", 32, null, 3.72);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_022_001_talk_05", "sub_022", "npc_sub022_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0022");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub022_001", 3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub022_001", "smile");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub022_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_022_001_talk_06", "sub_022", "npc_sub022_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
