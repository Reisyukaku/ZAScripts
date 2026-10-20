package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C4E4C161B67FF0FDE")
@:expose("C4E4C161B67FF0FDE")
class Ev_sub_063_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub063_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
        var effectKey = "ef_line";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub063_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub063_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub063_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub063_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub063_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_063_010_talk_01", "sub_063", "npc_sub063_001");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_063_010_select_01", "msg_Ev_sub_063_010_select_02"], 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (0 == selection)
        {
            main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub063_001");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub063_001", 20);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_063_010_talk_03", "sub_063", "npc_sub063_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            this.Await((function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
            }));
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH01");
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub063_001", -391.98, -1.34, -803.51, -89.17);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub063_001");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-393.8, -0.43, -803.5]), lua.Table.create([13.35, -89.76, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.8, lua.Table.create([-392.71, -0.03, -803.51]), lua.Table.create([13.35, -89.76, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(31, Int)), null, null, null);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub063_001", "unique2");
            main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink("npc_sub063_001", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub063_001", 2);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_063_010_talk_04", "sub_063");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_063_010_talk_02", "sub_063", "npc_sub063_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        };
        untyped this.m_resultParam = selection;
    }
}
