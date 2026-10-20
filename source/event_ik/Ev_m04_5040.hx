package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C6FB2AD5126FD54AB")
@:expose("C6FB2AD5126FD54AB")
class Ev_m04_5040 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_ga_boss", "npc_main_ga_leader"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var getFlagValueResult:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m04_5040");
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", ("line01" : Dynamic));
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(("line01" : Dynamic));
        }));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("npc_ga_member_m_00", lua.Table.create([3.95, 0.01, -7.3]), 90.0, "npc_ga_member_m_00");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("npc_ga_member_m_01", lua.Table.create([3.95, 0.01, -10.2]), 90.0, "npc_ga_member_m_01");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("npc_ga_member_m_02", lua.Table.create([3.95, 0.01, -6.3]), 90.0, "npc_ga_member_m_02");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("npc_ga_member_m_03", lua.Table.create([3.95, 0.01, -9.2]), 90.0, "npc_ga_member_m_03");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ga_boss", 14.81, 0.0, -12.08, 1.42);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 14.4, 0.01, -10.85, -162.95);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ga_leader", 13.86, (0.0 : Dynamic), (-12.84 : Dynamic), (11.4 : Dynamic));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("Player", false);
        var fObj_Set_CollisionAndGravity:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity;
        fObj_Set_CollisionAndGravity(("npc_main_ga_boss" : Dynamic), (false : Dynamic));
        if (false == getFlagValueResult)
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_01_SUS");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ga_leader", "Player", "head");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.21, 1.65, -11.0]), lua.Table.create([-17.65, 38.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.15);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.8, lua.Table.create([15.35, 1.65, -11.11]), lua.Table.create([-17.65, 38.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5040_talk_10", "main_04_01", "npc_main_ga_leader");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_ga_boss", -125.08);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5040_talk_11", "main_04_01", "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.54, 1.81, -9.74]), lua.Table.create([-20.49, 28.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var fObj_Set_TurnResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_ga_leader", 55.9);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ga_leader", "npc_main_ga_boss", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5040_talk_12", "main_04_01", "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_TurnResult);
            main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_ga_leader");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.51, 1.25, -11.96]), lua.Table.create([-11.06, 50.84, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M04_5040_CAMERA_WHOOSH08");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([14.68, 1.25, -12.17]), lua.Table.create([-11.06, 50.84, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_leader", "rejoice_big_mc");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ga_boss", "npc_main_ga_leader", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_ga_leader", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m04_5040_talk_13", "main_04_01", "npc_main_ga_leader");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 14.84, 0.01, -11.05, -162.95);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([10.66, 0.77, -11.69]), lua.Table.create([-1.06, -79.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_leader", "normal");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_ga_leader");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_ga_leader", 5.6, 0.0, -12.84, 2.0));
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_ga_member_m_00", 4.88, 0.01, -6.44, -96.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_ga_member_m_02", 4.45, 0.01, -5.46, -121.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ga_leader", 3.95, 0.0, -8.3, 90.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_ga_member_m_01", 3.95, 0.01, -10.2, -67.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_ga_member_m_03", 3.95, 0.01, -9.2, -54.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([4.63, 1.16, -7.48]), lua.Table.create([6.49, 124.16, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_ga_member_m_00", 3.95, 0.01, -7.3, 2.0);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_ga_member_m_02", 3.95, 0.01, -6.3, 2.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_ga_member_m_00", 90.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_ga_member_m_02", 90.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_ga_member_m_00");
            main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_ga_member_m_02");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH06");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.2, lua.Table.create([6.86, 0.4, -10.87]), lua.Table.create([9.53, 122.9, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_ga_member_m_03", 90.0);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_ga_member_m_01", 90.0);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([5.15, 1.02, -8.27]), lua.Table.create([0.84, 89.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_leader", 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_03_B_SUS");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M04_5040_OTAKU_WHOOSH05");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([7.78, 0.87, -8.27]), lua.Table.create([0.84, 89.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(("line01" : Dynamic));
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_ga_member_m_00", 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_ga_member_m_01", 20);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_ga_member_m_03", 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_ga_member_m_02", 20);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M04_5040_OTAKU_WHOOSH01");
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m04_5040_talk_14", "main_04_01", "npc_main_ga_leader");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FadeEffect(("line01" : Dynamic));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.68, 1.43, -11.1]), lua.Table.create([-3.19, 6.44, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var camera_Move_Angle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var sceneVector:Dynamic = lua.Table.create([14.92, 1.43, -11.13]);
            var sceneVector2:Dynamic = lua.Table.create([-3.19, 6.44, -0.0]);
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int)));
            camera_Move_Angle((1.0 : Dynamic), sceneVector, sceneVector2, (40.0 : Dynamic), (0 : Dynamic), cameraEase, (null : Dynamic), (null : Dynamic), (null : Dynamic), (null : Dynamic));
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_ga_member_m_00", "npc_main_ga_boss", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_ga_member_m_01", "npc_main_ga_boss", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_ga_member_m_02", "npc_main_ga_boss", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_ga_member_m_03", "npc_main_ga_boss", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ga_leader", "npc_main_ga_boss", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_ga_boss", 6.92);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ga_boss", "npc_main_ga_leader", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_ga_leader", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 14.84, 0.01, -11.05, -121.95);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ga_boss", 14.81, 0.0, -12.08, -84.08);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([10.66, 0.77, -11.69]), lua.Table.create([-1.06, -79.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_03_B_SUS");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.15);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_ga_leader", 5.6, 0.0, -12.84, 2.0));
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_ga_member_m_00", 4.88, 0.01, -6.44, -96.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_ga_member_m_02", 4.45, 0.01, -5.46, -121.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ga_leader", 3.95, 0.0, -8.3, 90.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_ga_member_m_01", 3.95, 0.01, -10.2, -67.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_ga_member_m_03", 3.95, 0.01, -9.2, -54.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([4.63, 1.16, -7.48]), lua.Table.create([6.49, 124.16, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_ga_member_m_00", 3.95, 0.01, -7.3, 2.0);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_ga_member_m_02", 3.95, 0.01, -6.3, 2.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_ga_member_m_00", 90.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_ga_member_m_02", 90.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_ga_member_m_00");
            main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_ga_member_m_02");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH06");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.2, lua.Table.create([6.86, 0.4, -10.87]), lua.Table.create([9.53, 122.9, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_ga_member_m_03", 90.0);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_ga_member_m_01", 90.0);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([5.15, 1.02, -8.27]), lua.Table.create([0.84, 89.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_leader", 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M04_5040_OTAKU_WHOOSH05");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([7.78, 0.87, -8.27]), lua.Table.create([0.84, 89.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(("line01" : Dynamic));
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_ga_member_m_00", 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_ga_member_m_01", 20);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_ga_member_m_03", 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_ga_member_m_02", 20);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M04_5040_OTAKU_WHOOSH01");
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m04_5040_talk_14", "main_04_01", "npc_main_ga_leader");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FadeEffect(("line01" : Dynamic));
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ga_boss", 14.81, 0.0, -12.08, -52.08);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.68, 1.43, -11.1]), lua.Table.create([-3.19, 6.44, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var camera_Move_Angle2:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var sceneVector3:Dynamic = lua.Table.create([14.92, 1.43, -11.13]);
            var sceneVector4:Dynamic = lua.Table.create([-3.19, 6.44, -0.0]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int)));
            camera_Move_Angle2((1.0 : Dynamic), sceneVector3, sceneVector4, (40.0 : Dynamic), (0 : Dynamic), cameraEase2, (null : Dynamic), (null : Dynamic), (null : Dynamic), (null : Dynamic), (null : Dynamic));
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_ga_member_m_00", "npc_main_ga_boss", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_ga_member_m_01", "npc_main_ga_boss", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_ga_member_m_02", "npc_main_ga_boss", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_ga_member_m_03", "npc_main_ga_boss", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ga_leader", "npc_main_ga_boss", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_ga_boss", 6.92);
        };
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5040_talk_01", "main_04_01", "npc_main_ga_boss");
        var menuLabels:Dynamic = (["msg_Ev_m04_5040_select_01", "msg_Ev_m04_5040_select_02"]);
        var menuSelection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, (0 : Dynamic), (true : Dynamic), (false : Dynamic));
        if (0 == menuSelection)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5040_talk_04", "main_04_01", "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_ga_boss", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ga_boss", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ga_boss", 18.78, 0.0, -10.23, -90.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 12.19, 0.01, -10.21, 90.0);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.49, 0.97, -7.17]), lua.Table.create([-0.84, 0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([15.49, 1.04, -2.47]), lua.Table.create([-0.84, 0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 15.2, 0.01, -10.21, 0.5);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_ga_boss", 15.78, 0.0, -10.23, 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.49, 1.04, -6.49]), lua.Table.create([-0.84, 0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.49, 1.36, -8.96]), lua.Table.create([-2.39, 0.24, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.49, 1.36, -8.96]), lua.Table.create([-2.39, 0.24, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.PlayAdventRotomSequenceForKanary("Player", "npc_main_ga_boss", "ob0004_00_normal_03");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.44, 0.92, -9.66]), lua.Table.create([11.86, -55.65, 0.01]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.8, lua.Table.create([14.54, 0.92, -9.51]), lua.Table.create([11.86, -55.65, 0.01]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5040_talk_05", "main_04_01", "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.28, 1.31, -9.87]), lua.Table.create([11.86, -55.65, 0.01]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "rejoice_small_mc");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5040_talk_06", "main_04_01", "npc_main_ga_boss");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "normal");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([16.41, 0.99, -9.53]), lua.Table.create([10.57, 50.42, 0.01]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m04_5040_select_03", "msg_Ev_m04_5040_select_04", "msg_Ev_m04_5040_select_05"]), 0, false, false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.34, 1.03, -9.44]), lua.Table.create([-5.06, -34.68, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([15.14, 1.41, -10.01]), lua.Table.create([-5.06, -83.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            var animationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 333);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m04_5040_talk_07", "main_04_01", "npc_main_ga_boss", true, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
            var camera_Move_Angle3:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var sceneVector5:Dynamic = lua.Table.create([14.44, 0.92, -9.32]);
            var sceneVector6:Dynamic = lua.Table.create([9.83, -49.41, 0.0]);
            var cameraEase3:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            camera_Move_Angle3((0.0 : Dynamic), sceneVector5, sceneVector6, (40.0 : Dynamic), (0 : Dynamic), cameraEase3, (null : Dynamic), (null : Dynamic), (null : Dynamic));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_02");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            main.event.ik.command.IkScriptCommand.S5947B527097768D0(4);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_ga_leader", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 28);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5040_talk_03", "main_04_01", "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ga_leader", 13.86, 0.0, -12.84, -11.6);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_SUS");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 14.61, 0.01, -9.44, -171.42);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ga_boss", 14.52, 0.0, -11.96, 8.92);
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_ga_leader", true);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_ga_boss");
        untyped this.m_resultParam = menuSelection;
    }
}
