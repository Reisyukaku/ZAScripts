package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C24CD929B0134EF5B")
@:expose("C24CD929B0134EF5B")
class Ev_sub_043_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub043_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var result:Int = 0;
        if (true == main.event.ik.command.IkScriptCommand.CheckPossibleAddPpokemon())
        {
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T1000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T1000");
            main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
            main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub043_001", "Player");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub043_001");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub043_001", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub043_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub043_001");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
            main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub043_001");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub043_001", 174);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub043_001", "rejoice_big_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_043_020_talk_01", "sub_043", "npc_sub043_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub043_001", "normal");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_POKEGET");
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_043_020_talk_03", "sub_043");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0043");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
            main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub043_001", "Player");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub043_001");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub043_001", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub043_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_043_020_talk_02", "sub_043", "npc_sub043_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            result = 1;
        };
        untyped this.m_resultParam = result;
    }
}
