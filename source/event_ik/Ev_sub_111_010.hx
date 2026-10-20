package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C2B46FDAFB31F3D24")
@:expose("C2B46FDAFB31F3D24")
class Ev_sub_111_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub111_001", "npc_pokemon_sub111_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var hideMessageWindow:Dynamic = null;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        var emptyTableResult:Dynamic = lua.abi.Host.emptyTable();
        untyped emptyTableResult[1] = (0 : Dynamic);
        untyped emptyTableResult[2] = (2.2 : Dynamic);
        untyped emptyTableResult[3] = (0 : Dynamic);
        main.event.ik.command.IkScriptCommand.Camera_Easy_Base("Player", "npc_pokemon_sub111_1", 2.2, 35.0, true, 2, 0.9, emptyTableResult);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub111_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub111_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_pokemon_sub111_1", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_pokemon_sub111_1");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_pokemon_sub111_1");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_111_010_sys_01", "sub_111");
        var menuLabels:Dynamic = (["msg_Ev_sub_111_010_select_01", "msg_Ev_sub_111_010_select_02"]);
        var selection:Dynamic = (main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false));
        hideMessageWindow = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
        hideMessageWindow();
        if (0 == selection)
        {
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            hideMessageWindow = "line01";
            main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", hideMessageWindow);
            this.Await((function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(hideMessageWindow);
            }));
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(hideMessageWindow);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub111_1", -597.55, 0.01, -325.41, 147.37);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_sub111_1");
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-596.88, 0.3, -326.45]), lua.Table.create([0.16, 146.98, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            var cameraMoveAngle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector:Dynamic = lua.Table.create([-597.07, 0.3, -326.16]);
            var cameraVector2:Dynamic = lua.Table.create([0.16, 146.98, -0.0]);
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            cameraMoveAngle(0.2, cameraVector, cameraVector2, 40.0, 0, cameraEase, null, null, null);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub111_1", 17);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB_112_TSUKKOMI_L");
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_111_010_talk_02", "sub_111", null, true, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_EV_WILD");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FadeEffect(hideMessageWindow);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("npc_pokemon_sub111_1", 11);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_111_010_talk_01", "sub_111");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            hideMessageWindow = untyped ext.gf.audio.SoundCommand.PostEventGlobal;
            hideMessageWindow("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        };
        untyped this.m_resultParam = selection;
    }
}
