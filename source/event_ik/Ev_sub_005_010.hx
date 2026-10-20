package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CB4D24F50999B45CE")
@:expose("CB4D24F50999B45CE")
class Ev_sub_005_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub005_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub005_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub005_001");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub005_001", "Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub005_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub005_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_005_010_talk_01", "sub_005", "npc_sub005_001");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_005_010_select_01", "msg_Ev_sub_005_010_select_02"]), 0, true, false, 2, 0, "sub_005");
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub005_001");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
            main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub005_001", 3);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub005_001", "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub005_001", 2);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_005_010_talk_03", "sub_005", "npc_sub005_001");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub005_001", "smile");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub005_001", 33, null, 4.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_005_010_talk_04", "sub_005", "npc_sub005_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub005_001");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub005_001", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_005_010_talk_02", "sub_005", "npc_sub005_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
            main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_OFF");
        };
        main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("npc_sub005_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub005_001");
        untyped this.m_resultParam = selection;
    }
}
