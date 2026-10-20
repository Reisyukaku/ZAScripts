package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C6B611073C83CF900")
@:expose("C6B611073C83CF900")
class Ev_m01_0063 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main01_0001", "npc_main01_0002", "npc_pokemon_yancham"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:Dynamic = null;
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -678.3, 0.01, -835.76, 69.06);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_yancham", -676.14, 0.0, -835.31, -110.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main01_0002", -675.11, 0.0, -834.58, -132.69);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main01_0001", -675.07, 0.0, -835.83, -61.09);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_yancham", 17);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-677.77, 0.74, -835.88]), lua.Table.create([-16.7, -109.09, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(6, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.35, lua.Table.create([-677.32, 0.6, -835.72]), lua.Table.create([-16.7, -109.09, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(6, Int))), null, null, null, null);
        effectKey = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0063_talk_01", "main_01_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var menuLabels:Dynamic = (["msg_Ev_m01_0060_select_01", "msg_Ev_m01_0060_select_02"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        var hideMessageWindow:Dynamic = main.event.ik.command.IkScriptCommand.HideMessageWindow;
        hideMessageWindow();
        if (0 == selection)
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-676.6, 1.48, -834.99]), lua.Table.create([-4.48, -61.23, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraVector:Dynamic = lua.Table.create([-675.82, 1.52, -835.42]);
            var cameraVector2:Dynamic = lua.Table.create([-4.48, -61.23, 0.0]);
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, cameraVector, cameraVector2, 40.0, 0, cameraEase, null, null, null);
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
            var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main01_0001", 21);
            main.event.ik.command.IkScriptCommand.SDF7733B3BCABC76A("npc_main01_0001", "surprise_mc");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_M");
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m01_0063_talk_02", "main_01_01", "npc_main01_0001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
            main.event.ik.command.IkScriptCommand.Wait_CameraShake();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        }
        else
        {
            var cameraMoveAngle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector3:Dynamic = lua.Table.create([-675.95, 1.5, -835.35]);
            var cameraVector4:Dynamic = lua.Table.create([-3.77, -61.31, -0.0]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int)));
            cameraMoveAngle(0.0, cameraVector3, cameraVector4, 40.0, 0, cameraEase2, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main01_0001", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0063_talk_03", "main_01_01", "npc_main01_0001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main01_0001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main01_0001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -677.47, 0.01, -835.76, 72.844);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
