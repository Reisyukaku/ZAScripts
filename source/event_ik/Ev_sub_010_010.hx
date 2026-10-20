package event_ik;

import main.event.ik.base.BaseMainScenario;
import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("C038D8433A3C50558")
@:expose("C038D8433A3C50558")
class Ev_sub_010_010 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = ["npc_sub010_001", "npc_sub010_002"];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_MUTE_T0");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub010_002", "Player");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub010_002");
        IkScriptCommand.FObj_LookAt_Obj("npc_sub010_001", "Player", "head");
        IkScriptCommand.FObj_LookAt_Obj("npc_sub010_002", "Player", "head");
        IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub010_002", "head");
        IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub010_002");
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.S522136910C73A819("Player");
        IkScriptCommand.S522136910C73A819("npc_sub010_002");
        IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub010_002", 32, null, 3.85);
        IkScriptCommand.Wait_Time(0.5);
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_010_talk_01", "sub_010", "npc_sub010_002");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_010_talk_02", "sub_010", "npc_sub010_002");
        var selection = IkScriptCommand.ShowContextMenu(["msg_Ev_sub_010_010_select_01", "msg_Ev_sub_010_010_select_02"], 0, true, false);
        IkScriptCommand.Wait_FObj_Action();
        if (1 == selection)
        {
            IkScriptCommand.SetFacialTemplate("npc_sub010_002", "anger_mc");
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_010_talk_03", "sub_010", "npc_sub010_002");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
        }
        else
        {
            IkScriptCommand.FObj_Set_Animation("npc_sub010_002", 174);
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_010_talk_04", "sub_010", "npc_sub010_002");
            IkScriptCommand.HideMessageWindow();
            IkScriptCommand.Wait_FObj_Action();
            IkScriptCommand.FObj_Set_Visibility("Player", false);
            IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub010_002", 3);
            IkScriptCommand.FObj_Set_Animation("npc_sub010_002", 491);
            IkScriptCommand.SetFacialTemplate("npc_sub010_002", "serious");
            IkScriptCommand.ShowMessage(1, "msg_Ev_sub_010_010_talk_05", "sub_010", "npc_sub010_002");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
            IkScriptCommand.FadeOutType(7);
        }
        this.m_resultParam = selection;
        IkScriptCommand.FObj_LookAt_End("Player");
        IkScriptCommand.FObj_LookAt_End("npc_sub010_002");
    }
}
