package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CFC79E5637856C6F4")
@:expose("CFC79E5637856C6F4")
class Ev_sub_058_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub058_001", "npc_pokemon_sub058_001", "npc_pokemon_sub058_002", "npc_pokemon_sub058_003", "npc_pokemon_sub058_004"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:Dynamic = null;
        effectKey = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-166.97), 0.11, (-826.65), (-37.39));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub058_3", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-167.72), 1.1, (-827.54)]), lua.Table.create([(-16.08), 161.26, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub058_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub058_2", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub058_3", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub058_4", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.8, lua.Table.create([(-166.85), 1.68, (-828.72)]), lua.Table.create([(-16.08), 161.26, (-0.0)]), 40.0, 0, cameraEase, null, null, null, null);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_058_010_sys_01", "sub_058");
        var menuLabels:Dynamic = (["msg_Ev_sub_058_010_select_01", "msg_Ev_sub_058_010_select_02"]);
        var selection:Dynamic = (main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false));
        var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
        hideMessageWindow();
        if (0 == selection)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 203);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            this.Await((function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
            }));
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T0");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-167.26), 1.17, (-827.55)]), lua.Table.create([(-16.65), 149.51, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(26, Int))));
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([(-167.65), 0.86, (-826.94)]), lua.Table.create([(-16.65), 149.51, 15.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(26, Int))), null, null, null);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB_058_010_PV_0374_00_INDEX");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub058_1", 17);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub058_2", 17);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub058_3", 17);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub058_4", 17);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_058_010_talk_01", "sub_058", null, true, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_EV_WILD");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T0_DELAY2000");
            var fadeOutType:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
            fadeOutType(7);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            var waitFade:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Fade;
            waitFade();
        };
        untyped this.m_resultParam = selection;
    }
}
