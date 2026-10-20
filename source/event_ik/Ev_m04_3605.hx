package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CAD49CE1E8FAB5800")
@:expose("CAD49CE1E8FAB5800")
class Ev_m04_3605 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:String = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-658.7), 0.01, (-871.17), 35.38);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("ZIGARUDE", lua.Table.create([(-662.44), 0.0, (-876.29)]), 29.76, 718, 1, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-661.97), 0.38, (-877.14)]), lua.Table.create([6.01, (-164.02), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("ZIGARUDE", (-662.08), 0.0, (-875.67), 0.5);
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("ZIGARUDE", 8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_3605_talk_17", "main_04_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", (-142.13));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-658.91), 1.37, (-872.28)]), lua.Table.create([(-2.63), (-168.35), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "surprise_mc");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("ZIGARUDE", (-662.08), 0.0, (-875.67), 33.26);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-659.33), 0.01, (-871.76), (-139.99));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-658.84), 1.65, (-872.65)]), lua.Table.create([(-16.88), 63.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "ZIGARUDE", "head");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", (-660.25), 0.01, (-872.83), 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m04_3605_talk_18", "main_04_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-657.64), 0.03, (-874.55)]), lua.Table.create([12.42, 78.1, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([(-660.44), 0.27, (-875.14)]), lua.Table.create([12.42, 78.1, 2.3]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ZIGARUDE", 17);
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        main.event.ik.command.IkScriptCommand.ShowMessage_NoWait(1, "msg_Ev_m04_3605_talk_19", "main_04_01", null, false, true);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        main.event.ik.command.IkScriptCommand.HideMessageWindow_NoWait();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("VS_BOSS_02_M04_READY");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
    }
}
