package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CCB3FAD11E6152750")
@:expose("CCB3FAD11E6152750")
class Ev_m10_9800 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    @:abiSlot(10)
    public var slot10:Dynamic;

    public function new()
    {
        this.slot10 = "npc_pokemon_zygarde";
        this.slot9 = "npc_main_f";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = ([]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = null;
        var eventParameters:Dynamic = null;
        scenario = this;
        eventParameters = this.m_eventScriptParam;
        var eventParameters2:Dynamic = eventParameters;
        eventParameters = untyped eventParameters.f73EE8FEC;
        eventParameters = eventParameters(eventParameters2);
        if ("0" == eventParameters)
        {
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
            main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot10, "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
            eventParameters = "ef_line";
            main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", eventParameters);
            this.Await((function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(eventParameters);
            }));
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-499.87), (-1.47), (-507.23), 7.51);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, (-499.55), (-1.52), (-503.78), (-178.46));
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-500.8), 0.45, (-508.32)]), lua.Table.create([(-11.15), (-150.93), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-500.8), 0.02, (-508.32)]), lua.Table.create([(-11.15), (-150.93), 0.0]), 40.0, 0, cameraEase, null, null, null, null);
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
            this.TimeWait(1.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m10_9800_talk_01", "main_10_01");
            var menuLabels:Dynamic = (["msg_Ev_m10_9800_select_01", "msg_Ev_m10_9800_select_02"]);
            var selection:Dynamic = (main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            if (0 == (selection : Dynamic))
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 17);
                this.TimeWait(0.5);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-500.08), (-0.42), (-505.65)]), lua.Table.create([(-14.53), (-159.74), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.1, lua.Table.create([(-499.95), (-0.47), (-505.32)]), lua.Table.create([(-14.53), (-159.74), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))), null, null, null);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.PlayEffectSequence(eventParameters);
                var callback:Dynamic = function():Dynamic
                {
                    scenario.F32FAD7D4DF3ACA95(1.0);
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    main.event.ik.command.IkScriptCommand.FadeEffect(eventParameters);
                    return null;
                };
                main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(1, "msg_Ev_m10_9800_talk_02", "main_10_01", null, true, true, callback);
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_02_READY");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_OFF");
                var fadeOutType:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
                fadeOutType(7);
            }
            else
            {
                if (1 == (selection : Dynamic))
                {
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                    main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
                    var executeBGMCommand:Dynamic = untyped main.event.ik.command.IkScriptCommand.ExecuteBGMCommand;
                    executeBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_OFF");
                };
            };
            untyped this.m_resultParam = selection;
        }
        else
        {
            eventParameters = this.m_eventScriptParam;
            var eventParameters3:Dynamic = eventParameters;
            eventParameters = untyped eventParameters.f73EE8FEC;
            eventParameters = eventParameters(eventParameters3);
            if ("1" == eventParameters)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m10_9800_talk_03", "main_10_01", null);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                eventParameters = untyped main.event.ik.command.IkScriptCommand.ExecuteBGMCommand;
                eventParameters("EV_CMN_ZONE_WILD_VS_BLOCK_OFF");
            };
        };
    }
}
