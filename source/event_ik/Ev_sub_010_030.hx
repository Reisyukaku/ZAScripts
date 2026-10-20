package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C03949033A3CB386A")
@:expose("C03949033A3CB386A")
class Ev_sub_010_030 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub010_001", "npc_sub010_002"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub010_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub010_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub010_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub010_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub010_001", "head");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub010_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub010_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_030_talk_01", "sub_010", "npc_sub010_001");
        var choices = (["msg_Ev_sub_010_030_select_01", "msg_Ev_sub_010_030_select_02"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(choices, 0, true, false);
        if (((1 == selection)))
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub010_001", "smile_bitter");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_030_talk_02", "sub_010", "npc_sub010_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("npc_sub010_002"));
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
            main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub010_001", 3);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub010_001", "serious");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_001", 2);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_030_talk_03", "sub_010", "npc_sub010_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub010_001", "smile");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub010_001", 32, null, 5.85);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_010_030_talk_04", "sub_010", "npc_sub010_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        };
        untyped this.m_resultParam = selection;
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub010_001");
    }
}
