package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C8E66270A72678E69")
@:expose("C8E66270A72678E69")
class Ev_sub_061_310 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub061_004", "npc_pokemon_sub061_4"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:Dynamic = null;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 13.52, (-0.98), (-24.4), (-180.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub061_004", 13.52, (-1.0), (-26.56), 0.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub061_4", 12.58, (-1.0), (-27.39), 19.5);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub061_4");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub061_004", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub061_4", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub061_004", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_004", 2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        effectKey = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.52, 0.11, (-24.95)]), lua.Table.create([5.54, 34.36, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([14.12, 0.11, (-25.36)]), lua.Table.create([5.54, 34.37, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub061_004", 33, null, 4.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_004", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_310_talk_01", "sub_061", "npc_sub061_004");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var selectPokemonCountParty:Dynamic = main.event.ik.command.IkScriptCommand.GetSelectPokemonCount_Party((cast(676, Int)));
        var pokemonCountParty:Dynamic = main.event.ik.command.IkScriptCommand.GetPokemonCount_Party();
        var eventResult:Dynamic = 0;
        if (selectPokemonCountParty == pokemonCountParty)
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_004", "smile");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_004", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_310_talk_03", "sub_061", "npc_sub061_004");
            var menuLabels:Dynamic = (["msg_Ev_sub_061_310_select_01", "msg_Ev_sub_061_310_select_02"]);
            var selection:Dynamic = (main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var waitFObjAction:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            waitFObjAction();
            if (0 == selection)
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_sub061_004", 491);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_004", "anger_mc");
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub061_4", 12.58, (-1.01), (-27.32), 47.93);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.91, 0.75, (-23.87)]), lua.Table.create([(-15.3), 11.67, 20.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_S");
                main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
                var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.25, lua.Table.create([13.61, 0.52, (-25.33)]), lua.Table.create([(-15.3), 11.67, 20.0]), 40.0, 0, cameraEase, null, null, null);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_310_talk_05", "sub_061", "npc_sub061_004");
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
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.49, 0.38, (-23.4)]), lua.Table.create([(-6.01), 30.58, (-0.0)]), 40.0, 0, cameraEase2, null, null, null);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_004", 175);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_004", "sad");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_310_talk_04", "sub_061", "npc_sub061_004");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
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
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.49, 0.38, (-23.4)]), lua.Table.create([(-6.01), 30.58, (-0.0)]), 40.0, 0, cameraEase3, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_004", 175);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_004", "serious");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_310_talk_02", "sub_061", "npc_sub061_004");
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
