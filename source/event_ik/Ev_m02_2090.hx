package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC610BAAB84EDCA4B")
@:expose("CC610BAAB84EDCA4B")
class Ev_m02_2090 extends BaseMainScenario
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
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M6DB_T1000");
        var actorId:Dynamic = untyped lua.abi.Host.concat(Std.string("dyn_"), Std.string("npc_trainer_rankZ_rankup"));
        var emptyTableResult:Dynamic = lua.abi.Host.emptyTable();
        untyped emptyTableResult[1] = -873.73;
        untyped emptyTableResult[2] = 0.16;
        untyped emptyTableResult[3] = -834.97;
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(actorId, emptyTableResult, untyped -33.59, "npc_trainer_rankZ_rankup");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m02_2090");
        if (((false == flagValue)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(actorId, false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -861.46, 0.16, -823.82, -131.24);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -860.78, 0.15, -824.6, -106.82);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-856.92, 1.2, -824.79]), lua.Table.create([-2.5, 86.52, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S_LOW");
            var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2090_talk_20", "main_02_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
            main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
            var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(actorId, -875.54, 0.16, -832.84, 0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(actorId, true);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-870.16, 1.58, -830.37]), lua.Table.create([-5.77, 74.35, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(5.0, lua.Table.create([-869.64, 1.58, -832.25]), lua.Table.create([-5.77, 74.35, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(actorId, lua.Table.create([-875.74, 0.15, -832.99]));
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn(actorId, -126.11);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2090_talk_21", "main_02_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2090_talk_01", "main_02_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-874.02, 1.68, -832.89]), lua.Table.create([-7.85, 89.58, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End(actorId);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            var setTurnAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn(actorId, 43.95);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_04_LOW");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", actorId, "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", actorId, "head");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-874.42, 1.67, -831.77]), lua.Table.create([-5.04, 47.28, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -873.35, 0.16, -829.9, -134.58);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -872.2, 0.15, -830.2, -132.79);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-871.81, 1.55, -829.25]), lua.Table.create([-5.04, 47.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId, "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnAction);
            var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 18);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2090_talk_02", "main_02_01", actorId);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-872.75, 0.94, -832.55]), lua.Table.create([2.5, 82.16, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId, "npc_main_rival_m", "head");
            var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 19);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2090_talk_22", "main_02_01", actorId);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId, "Player", "head");
            var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2090_talk_03", "main_02_01", actorId);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -873.98, 0.16, -831.36, -130.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -872.12, 0.15, -830.26, -125.48);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-872.71, 1.55, -831.44]), lua.Table.create([-3.78, 79.37, -0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var setAnimationOneShotAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(actorId, 32, null, 3.85);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2090_talk_04", "main_02_01", actorId);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2090_talk_05", "main_02_01", actorId);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var waitFObjActionOneShot:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot;
            waitFObjActionOneShot(setAnimationOneShotAction);
        }
        else
        {
            if (((true == flagValue)))
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -873.98, 0.16, -831.36, -130.3);
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -872.12, 0.15, -830.26, -125.48);
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(actorId, -875.54, 0.16, -832.84, 43.95);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", actorId, "head");
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId, "Player", "head");
                var cameraVector:Dynamic = lua.Table.create([-872.71, 1.55, -831.44]);
                var cameraVector2:Dynamic = lua.Table.create([-3.94, 76.55, -0.0]);
                var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, cameraVector, cameraVector2, 40.0, 0, cameraEase2);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                var waitTime:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Time;
                waitTime(0.3);
            };
        };
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_04_LOW");
        var setAnimationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2090_talk_06", "main_02_01", actorId);
        var menuLabels:Dynamic = (["msg_Ev_m02_2090_select_01", "msg_Ev_m02_2090_select_02"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection)))
        {
            var setAnimationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction5);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction6);
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "serious");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -868.24, 0.16, -824.54, 139.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -862.11, 0.15, -820.08, -158.39);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(actorId, -865.06, 0.16, -828.43, -40.09);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-852.14, 4.98, -820.64]), lua.Table.create([-16.46, 77.09, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-851.79, 4.98, -822.16]), lua.Table.create([-16.46, 77.09, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-862.6, 1.44, -821.14]), lua.Table.create([-0.75, -167.9, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId, "Player", "neck");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2090_talk_09", "main_02_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-861.85, 1.21, -822.43]), lua.Table.create([-0.49, 50.47, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            var moveToPosXYZAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -866.85, 0.16, -826.23, 1.0);
            var moveToPosXYZAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(actorId, -866.51, 0.16, -826.7, 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-865.75, 1.51, -825.67]), lua.Table.create([-1.39, 50.45, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction2);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction3);
            main.event.ik.command.IkScriptCommand.PlayAdventRotomSequence("Player", actorId);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-865.24, 1.33, -826.84]), lua.Table.create([6.06, 103.88, -0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var setAnimationAction7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2090_talk_10", "main_02_01", actorId);
            var menuLabels2:Dynamic = (["msg_Ev_m02_2090_select_03", "msg_Ev_m02_2090_select_04", "msg_Ev_m02_2090_select_05"]);
            var selection2:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels2, 0, false, false);
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            if (((((0 == selection2)) || ((1 == selection2)))))
            {
                var waitFObjAction:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                var setAnimationAction8:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("Player", 18);
                waitFObjAction(setAnimationAction8, null, null, null, null, null, null, null, null);
            }
            else
            {
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
                var setAnimationAction9:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 20);
                main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
                var waitFObjAction2:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                waitFObjAction2(setAnimationAction9);
            };
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction7);
            var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-866.47, 1.19, -825.29]), lua.Table.create([14.31, 12.81, -0.0]), 30.0, 0, cameraEase3);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(actorId, 32, null, 3.85);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2090_talk_07", "main_02_01", actorId);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
            main.event.ik.command.IkScriptCommand.S5947B527097768D0(4);
            var setFacialTemplate:Dynamic = untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate;
            setFacialTemplate("Player", "normal", "Player");
        }
        else
        {
            var setAnimationAction10:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction5);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction10);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "sad");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(actorId, 32, null, 3.85);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2090_talk_08", "main_02_01", actorId);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_LOW");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -873.98, 0.16, -831.36, -130.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", untyped -872.12, 0.15, untyped -830.26, untyped -125.48);
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        };
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
        untyped this.m_resultParam = selection;
    }
}
