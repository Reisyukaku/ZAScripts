package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CE397614219CB54FD")
@:expose("CE397614219CB54FD")
class Ev_sub_057_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub057_001", "npc_pokemon_sub057_1", "npc_pokemon_sub057_2"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:Dynamic = null;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-748.0), 0.02, (-172.06), (-121.79));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        effectKey = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-749.34), 0.95, (-173.04)]), lua.Table.create([(-0.0), 54.77, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([(-748.2), 0.95, (-172.24)]), lua.Table.create([(-0.0), 54.77, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub057_1", 17);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub057_2", 17);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(29, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-745.13), 0.75, (-172.18)]), lua.Table.create([2.73, 78.14, 0.0]), 40.0, 0, cameraEase, null, null, null, null);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_057_010_sys_01", "sub_057");
        var menuLabels:Dynamic = (["msg_Ev_sub_057_010_select_01", "msg_Ev_sub_057_010_select_02"]);
        var selection:Dynamic = (main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var waitFObjAction:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
        waitFObjAction();
        if (0 == selection)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub057_1", "Player");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub057_2", "Player");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-746.29), 0.49, (-174.25)]), lua.Table.create([4.36, 94.9, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub057_1", 17);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub057_2", 17);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            this.Await((function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
            }));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-747.14), 0.56, (-174.18)]), lua.Table.create([4.36, 94.9, 15.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))), null, null, null);
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_057_010_talk_01", "sub_057", null, false, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_EV_WILD");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            var fadeOutType:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
            fadeOutType(7);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            var postEventGlobal:Dynamic = untyped ext.gf.audio.SoundCommand.PostEventGlobal;
            postEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        };
        untyped this.m_resultParam = selection;
    }
}
