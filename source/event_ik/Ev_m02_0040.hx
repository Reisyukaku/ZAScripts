package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C5C4EC4999EFECE4C")
@:expose("C5C4EC4999EFECE4C")
class Ev_m02_0040 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        var setPosAngAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -666.53, 0.01, -881.72, -143.6);
        var setPosAngAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -667.51, 0.0, -883.08, 35.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setPosAngAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setPosAngAction2);
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("npc_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-665.01, 1.42, -881.29]), lua.Table.create([-3.94, 65.12, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_GAME_OVER");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        var eventMode:Dynamic = untyped this.m_eventScriptParam.f73EE8FEC();
        if ("0" == eventMode)
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "rejoice_small", "npc_main_rival_m");
            var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0040_talk_01", "main_02_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        }
        else
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "smile_bitter", "npc_main_rival_m");
            var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 19);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_main_020500_010_talk_05", "main_02_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal", "npc_main_rival_m");
        var setAnimationOneShotAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_rival_m", 32, null, 2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0040_talk_02", "main_02_01", "npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m02_0040_select_01", "msg_Ev_m02_0040_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "rejoice_small", "npc_main_rival_m");
        var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0040_talk_03", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-666.61, 1.4, -882.49]), lua.Table.create([-1.72, 64.98, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal", "npc_main_rival_m");
        var setAnimationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0040_talk_04", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "confident", "npc_main_rival_m");
        var setAnimationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0040_talk_05", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction6);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-664.1, 1.33, -880.86]), lua.Table.create([-3.55, 63.91, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal", "npc_main_rival_m");
        var setAnimationOneShotAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_rival_m", 33, null, 4.8);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0040_talk_06", "main_02_01", "npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "rejoice_small", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0040_talk_07", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-667.49, 1.33, -884.97]), lua.Table.create([-3.78, -173.52, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal", "npc_main_rival_m");
        var setAnimationAction7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 174);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0040_talk_08", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction7);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-666.81, 1.46, -883.26]), lua.Table.create([-3.55, -173.64, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_rival_m", 1));
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.OpenAnyMenu(5);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-664.24, 1.23, -881.15]), lua.Table.create([-3.83, 68.86, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        var setAnimationAction8:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0040_talk_09", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction8);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "rejoice_small", "npc_main_rival_m");
        var setAnimationAction9:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0040_talk_10", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction9);
        main.event.ik.command.IkScriptCommand.OpenTips("tips_0022");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_rival_m", -678.82, 0.0, -898.31, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.9);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-664.24, 1.23, -881.15]), lua.Table.create([-3.89, 63.89, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
    }
}
