package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C1646EA2A4BD62B00")
@:expose("C1646EA2A4BD62B00")
class Ev_sub_106_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub106_001", "npc_sub106_002"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -493.79, 0.11, -853.64, 47.21);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub106_001", -493.0, 0.09, -852.59, -126.82);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub106_002", -491.76, 0.09, -853.58, -72.85);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub106_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub106_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub106_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_002", "serious");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-495.23, 1.73, -852.9]), lua.Table.create([-16.41, -80.85, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var matchingPokemonCount:Dynamic = main.event.ik.command.IkScriptCommand.GetSelectPokemonCount_Party((cast(699, Int)));
        var partyCount:UInt = main.event.ik.command.IkScriptCommand.GetPokemonCount_Party();
        if (matchingPokemonCount == 0 || partyCount > 1)
        {
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub106_001", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_002_talk_01", "sub_106", "npc_sub106_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub106_002", 1);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub106_001", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_010_talk_01", "sub_106", "npc_sub106_001");
            var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_106_010_select_01", "msg_Ev_sub_106_010_select_02"], 0, true, false);
            if (selection == 0)
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub106_001", 32, null, 3.85);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_001", "serious");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_010_talk_03", "sub_106", "npc_sub106_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-493.1, 1.36, -853.46]), lua.Table.create([-22.37, -69.58, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-492.98, 1.36, -853.13]), lua.Table.create([-22.37, -69.58, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub106_002", 491);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_002", "anger_mc");
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_010_talk_05", "sub_106", "npc_sub106_002");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                main.event.ik.command.IkScriptCommand.FadeOutType(7);
            }
            else
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub106_001", 174);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_001", "serious");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_010_talk_02", "sub_106", "npc_sub106_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
            }
            this.m_resultParam = selection;
        }
    }
}
