package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CA7EEAC0A80BCBBD8")
@:expose("CA7EEAC0A80BCBBD8")
class Ev_sub_061_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub061_001", "npc_pokemon_sub061_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:Dynamic = null;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 13.52, (-0.98), (-24.4), (-180.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub061_1", 12.6, (-1.0), (-26.06), 32.82);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub061_001", 13.52, (-1.0), (-26.56), 0.0);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub061_1");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub061_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub061_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub061_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        effectKey = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.89, 0.74, (-25.8)]), lua.Table.create([(-0.23), 27.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([13.89, 0.47, (-25.8)]), lua.Table.create([(-0.23), 27.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub061_001", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_010_talk_01", "sub_061", "npc_sub061_001");
        var selectPokemonCountParty:Dynamic = main.event.ik.command.IkScriptCommand.GetSelectPokemonCount_Party((cast(676, Int)));
        var pokemonCountParty:Dynamic = main.event.ik.command.IkScriptCommand.GetPokemonCount_Party();
        var eventResult:Dynamic = 0;
        if (selectPokemonCountParty == pokemonCountParty)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_010_talk_03", "sub_061", "npc_sub061_001");
            var menuLabels:Dynamic = (["msg_Ev_sub_061_010_select_01", "msg_Ev_sub_061_010_select_02"]);
            var selection:Dynamic = (main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var waitFObjAction:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            waitFObjAction();
            if (0 == selection)
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_001", 491);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.63, (-0.79), (-23.84)]), lua.Table.create([17.13, 13.86, 20.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_S");
                main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
                var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.25, lua.Table.create([13.39, (-0.49), (-24.81)]), lua.Table.create([17.13, 13.86, 20.0]), 40.0, 0, cameraEase, null, null, null);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_010_talk_05", "sub_061", "npc_sub061_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                var fadeOutType:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
                fadeOutType(7);
            }
            else
            {
                var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.13, 0.41, (-23.37)]), lua.Table.create([(-9.3), 42.23, (-0.0)]), 40.0, 0, cameraEase2, null, null, null);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_001", 175);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_001", "anger_mc");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_010_talk_04", "sub_061", "npc_sub061_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                var postEventGlobal:Dynamic = untyped ext.gf.audio.SoundCommand.PostEventGlobal;
                postEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            };
            eventResult = selection;
        }
        else
        {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.13, 0.41, (-23.37)]), lua.Table.create([(-9.3), 42.23, (-0.0)]), 40.0, 0, cameraEase3, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_001", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_010_talk_02", "sub_061", "npc_sub061_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            var postEventGlobal2:Dynamic = untyped ext.gf.audio.SoundCommand.PostEventGlobal;
            postEventGlobal2("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            eventResult = (1 : Dynamic);
        };
        untyped this.m_resultParam = eventResult;
    }
}
