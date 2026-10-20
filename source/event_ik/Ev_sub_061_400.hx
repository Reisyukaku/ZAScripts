package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CCA2B5E0A94036AED")
@:expose("CCA2B5E0A94036AED")
class Ev_sub_061_400 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub061_005", "npc_pokemon_sub061_5"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        var getFlagValueResult:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_061_400");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -482.37, 1.5, -727.89, 85.29);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub061_5", -481.35, 1.5, -728.77, -39.57);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub061_005", -480.44, 1.49, (untyped -727.73 : Dynamic), (untyped -103.76 : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub061_5");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub061_005", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub061_005", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub061_5", "Player", "head");
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", ("line01" : Dynamic));
        var sceneCallback:Dynamic = function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(("line01" : Dynamic));
        };
        this.Await(sceneCallback);
        var wait_FObj_Action:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
        wait_FObj_Action();
        if (false == getFlagValueResult)
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-483.39, 3.13, -726.97]), lua.Table.create([-16.55, -51.36, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var camera_Move_Angle:Dynamic = untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var sceneVector:Dynamic = lua.Table.create([-483.19, 3.13, -726.71]);
            var sceneVector2:Dynamic = lua.Table.create([-16.55, -51.36, -0.0]);
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            camera_Move_Angle((2.0 : Dynamic), sceneVector, sceneVector2, (40.0 : Dynamic), (0 : Dynamic), cameraEase, (null : Dynamic), (null : Dynamic), (null : Dynamic), (null : Dynamic), (null : Dynamic), (null : Dynamic), (null : Dynamic));
        }
        else
        {
            var sceneVector3:Dynamic = lua.Table.create([-483.19, 3.13, -726.71]);
            var sceneVector4:Dynamic = lua.Table.create([-16.55, -51.36, -0.0]);
            var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle((0.0 : Dynamic), sceneVector3, sceneVector4, (40.0 : Dynamic), (0 : Dynamic), cameraEase2, (null : Dynamic), (null : Dynamic), (null : Dynamic), (null : Dynamic));
            var wait_Camera:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Camera;
            wait_Camera();
        };
        main.event.ik.command.IkScriptCommand.Fade_In(("transition_fade_inout" : Dynamic), (0.5 : Dynamic));
        var wait_Fade:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Fade;
        wait_Fade();
        if (false == getFlagValueResult)
        {
            main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_400_talk_01", "sub_061", "npc_sub061_005");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_005", 175);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_400_talk_02", "sub_061", "npc_sub061_005");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-481.6, 2.96, -727.96]), lua.Table.create([-21.57, -68.92, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(1, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.28, lua.Table.create([-481.41, 2.96, -727.45]), lua.Table.create([-21.57, -68.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(1, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_005", 174);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_005", "serious");
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_061_400_talk_03", "sub_061", "npc_sub061_005");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_005", "normal");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub061_005", 73, null, 4.95);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_400_talk_06", "sub_061", "npc_sub061_005");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-483.19, 3.13, -726.71]), lua.Table.create([-16.55, -51.36, -0.0]), 40.0, (0 : Dynamic), cameraEase3, (null : Dynamic), (null : Dynamic), (null : Dynamic), (null : Dynamic));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_005", 174);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_005", "serious");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_400_talk_04", "sub_061", "npc_sub061_005");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_005", "normal");
            main.event.ik.command.IkScriptCommand.ShowMessage((0 : Dynamic), ("msg_Ev_sub_061_400_talk_05" : Dynamic), ("sub_061" : Dynamic), ("npc_sub061_005" : Dynamic));
            var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            hideMessageWindow();
        }
        else
        {
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_005", 174);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_410_talk_01", "sub_061", "npc_sub061_005");
        var getSelectPokemonCount_PartyResult:Dynamic = main.event.ik.command.IkScriptCommand.GetSelectPokemonCount_Party((cast(676, Int)));
        var getPokemonCount_PartyResult:Dynamic = main.event.ik.command.IkScriptCommand.GetPokemonCount_Party();
        var partyCountIsNegative:Bool = untyped getPokemonCount_PartyResult < 0;
        var hasOtherPokemon:Bool = (partyCountIsNegative != (untyped getSelectPokemonCount_PartyResult < 0)) ? partyCountIsNegative : (untyped getPokemonCount_PartyResult > getSelectPokemonCount_PartyResult);
        var menuSelectionAfterBranch:Dynamic = null;
        if (lua.abi.Host.truthy(hasOtherPokemon))
        {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
            main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub061_005");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_005", 175);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub061_005");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_005", "serious");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, ("msg_Ev_sub_061_410_talk_02" : Dynamic), ("sub_061" : Dynamic), ("npc_sub061_005" : Dynamic));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            var postEventGlobal:Dynamic = untyped ext.gf.audio.SoundCommand.PostEventGlobal;
            postEventGlobal(("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000" : Dynamic));
            menuSelectionAfterBranch = (1 : Dynamic);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(1, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-481.41, 2.96, -727.45]), lua.Table.create([-21.57, -68.93, 0.0]), 40.0, (0 : Dynamic), cameraEase4, (null : Dynamic), (null : Dynamic), (null : Dynamic));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub061_005", 73, null, 4.95);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_410_talk_03", "sub_061", "npc_sub061_005");
            var menuLabels:Dynamic = (["msg_Ev_sub_061_410_select_01", "msg_Ev_sub_061_410_select_02"]);
            var menuSelection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, (0 : Dynamic), (true : Dynamic), (false : Dynamic));
            var hideMessageWindow2:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            hideMessageWindow2();
            if (0 == menuSelection)
            {
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub061_005", lua.Table.create([-483.08, 2.5, -727.01]));
                main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub061_5", false);
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub061_5", -480.44, 1.49, -728.7, -20.56);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_sub061_5");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-482.59, 2.5, -726.68]), lua.Table.create([-1.61, -58.61, 27.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_S");
                main.event.ik.command.IkScriptCommand.PlayEffectSequence(("line01" : Dynamic));
                var cameraEase5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(31, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-481.5, 2.46, -727.34]), lua.Table.create([-1.61, -58.61, 27.0]), 40.0, (0 : Dynamic), cameraEase5, (null : Dynamic), (null : Dynamic), (null : Dynamic));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_005", 174);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_005", "anger_mc");
                main.event.ik.command.IkScriptCommand.ShowMessage(1, ("msg_Ev_sub_061_410_talk_05" : Dynamic), ("sub_061" : Dynamic), ("npc_sub061_005" : Dynamic));
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.FadeEffect(("line01" : Dynamic));
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                var fadeOutType:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
                fadeOutType((7 : Dynamic));
            }
            else
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_410_talk_04", ("sub_061" : Dynamic), ("npc_sub061_005" : Dynamic));
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                main.event.ik.command.IkScriptCommand.Fade_Out(("transition_fade_inout" : Dynamic), (0.25 : Dynamic));
                var wait_Fade2:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Fade;
                wait_Fade2();
            };
            menuSelectionAfterBranch = menuSelection;
        };
        untyped this.m_resultParam = menuSelectionAfterBranch;
    }
}
