package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C8AD89949BF4B7156")
@:expose("C8AD89949BF4B7156")
class Ev_m08_5300 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["main_Girugarudo"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_INIT");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        var effectKey:String = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-34.25), 0.01, 118.3, 0.08);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_Girugarudo", (-34.48), 0.33, 134.49, (-178.99));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_Hitotsuki_1", (-32.71), 0.12, 134.43, 174.51);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_Hitotsuki_2", (-36.18), 0.12, 134.35, 174.51);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-35.61), 1.49, 116.98]), lua.Table.create([(-7.87), (-165.9), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.7, lua.Table.create([(-35.1), 1.49, 116.85]), lua.Table.create([(-7.87), (-165.9), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m08_5300_talk_01", "main_08_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-34.3), 0.38, 128.21]), lua.Table.create([8.85, 178.21, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([(-34.36), 0.64, 130.22]), lua.Table.create([8.85, 178.21, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("main_Girugarudo", 17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("main_Hitotsuki_1", 17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("main_Hitotsuki_2", 17);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m08_5300_talk_02", "main_08_01", null, false, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_M08_5300");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_OFF");
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
    }
}
