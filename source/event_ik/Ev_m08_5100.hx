package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C7A5F4349B63474A0")
@:expose("C7A5F4349B63474A0")
class Ev_m08_5100 extends BaseMainScenario
{
    @:abiSlot(8)
    public var isLightSceneLoaded:Dynamic;

    public function new()
    {
        untyped (this)[8] = false;
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        this.CreateSubCorutin("LoadLightScene", this.LoadLightScene);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -47.7, 0.01, 8.08, 157.18);
        var sceneVector:Dynamic = lua.Table.create([-46.86, 1.68, 7.36]);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", sceneVector);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        var sceneVector2:Dynamic = lua.Table.create([-45.52, 1.93, 8.33]);
        var sceneVector3:Dynamic = lua.Table.create([-16.96, 70.22, 0.0]);
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector2, sceneVector3, 40.0, 0, cameraEase);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var sceneVector4:Dynamic = lua.Table.create([-45.38, 1.93, 7.93]);
        var sceneVector5:Dynamic = lua.Table.create([-16.96, 70.22, 0.0]);
        var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, sceneVector4, sceneVector5, 40.0, 0, cameraEase2);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_LOWER_LEVER");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -47.46, 0.01, 8.32, 177.68);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m08_5100_talk_01", "main_08_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        cppbindings.C5090F7B8.f92941AC0("flag_lab_power_on_00", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -47.46, 0.01, 8.32, -176.32);
        var sceneVector6:Dynamic = lua.Table.create([-44.73, 4.96, 6.68]);
        var sceneVector7:Dynamic = lua.Table.create([-5.25, -143.06, 0.0]);
        var cameraEase3:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector6, sceneVector7, 40.0, 0, cameraEase3);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var sceneVector8:Dynamic = lua.Table.create([-48.95, 4.96, 9.85]);
        var sceneVector9:Dynamic = lua.Table.create([-5.25, -143.06, 0.0]);
        var cameraEase4:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, sceneVector8, sceneVector9, 40.0, 0, cameraEase4);
        this.Await((function():Dynamic {
            return scenario[8];
        }));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var sceneVector10:Dynamic = lua.Table.create([-51.1, 5.05, 12.72]);
        var sceneVector11:Dynamic = lua.Table.create([-13.21, -134.09, 0.0]);
        var cameraEase5:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector10, sceneVector11, 40.0, 0, cameraEase5);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M08_5100_START_WARP_DEVICE");
        main.event.ik.command.IkScriptCommand.ExecutePlayTimelineComponent("light_t2_Ev_m08_5100", "Ev_m08_5100_light");
        this.CreateCorouineLightFixed();
        main.event.ik.command.IkScriptCommand.Wait_Time(4.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m08_5100_talk_02", "main_08_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        cppbindings.C5090F7B8.f92941AC0("flag_Ev_m08_5100", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        this.TerminateLightScene();
    }
    @:hashAbi("FB569220B75793B31")
    public function LoadLightScene():Dynamic
    {
        var scene:StdTypes.Null<cppbindings.CA042DA13> = cppbindings.C682D8E4F.fEF94D11D("event_script");
        if ((scene == null)) {
            return null;
        };
        var lightScene:StdTypes.Null<cppbindings.CA042DA13> = scene.f1FC07C91("world/ik_scene/parts/light/light_t2_Ev_m08_5100_/light_t2_Ev_m08_5100.trscn");
        if ((lightScene == null)) {
            return null;
        };
        lightScene.f0EF10D0C();
        while ((!lightScene.f9D8BC178() || !lightScene.f48F8C7FF())) {
            this.Suspend();
        };
        var light:StdTypes.Null<cppbindings.C016374C1> = lightScene.fD4E64AB7("Ev_m08_5100_light");
        if ((light == null)) {
            return null;
        };
        while ((!light.f9D8BC178() || !light.f48F8C7FF())) {
            this.Suspend();
        };
        this.isLightSceneLoaded = true;
        return null;
    }
    @:hashAbi("F2317242310D67299")
    public function CreateCorouineLightFixed():Dynamic
    {
        var scene:StdTypes.Null<cppbindings.CA042DA13> = cppbindings.C682D8E4F.fEF94D11D("light_t2_Ev_m08_5100");
        if ((scene == null)) {
            return null;
        };
        var light:StdTypes.Null<cppbindings.C016374C1> = scene.fD4E64AB7("Ev_m08_5100_light");
        if ((light == null)) {
            return null;
        };
        this.CreateSubCorutin("LightFixed", function():Dynamic {
            var waiting:StdTypes.Bool = true;
            var targetCount:Dynamic = cppbindings.C56DE81E7.fD2704C01(light);
            while (waiting) {
                {
                    untyped __lua__("_G[{0}] = {1}", "_hx_do_first_1", (cast false));
                };
                var currentCount:StdTypes.Int = Std.int(cppbindings.C56DE81E7.f3C082C38(light));
                waiting = (targetCount != currentCount);
                main.event.ik.command.IkScriptCommand.Suspend();
            };
            var color:cppbindings.Vec4 = cppbindings.C56DE81E7.fF0BCB76A("spl_ev_m08_5100_Spot_teleporter", "ConeColor");
            var red:StdTypes.Float = color.x;
            var green:StdTypes.Float = color.y;
            var blue:StdTypes.Float = color.z;
            var alpha:StdTypes.Float = color.w;
            while (true) {
                {
                    untyped __lua__("_G[{0}] = {1}", "_hx_do_first_1", (cast false));
                };
                cppbindings.C56DE81E7.fAB8CE59E(light, "spl_ev_m08_5100_Spot_teleporter", "ConeColor", red, green, blue, alpha);
                main.event.ik.command.IkScriptCommand.Suspend();
            };
            return null;
        });
        return null;
    }
    @:hashAbi("F3EF809C473A0F770")
    public function TerminateLightScene():Dynamic
    {
        this.AllSubCorutinClear();
        var scene:StdTypes.Null<cppbindings.CA042DA13> = cppbindings.C682D8E4F.fEF94D11D("light_t2_Ev_m08_5100");
        if ((scene == null)) {
            return null;
        };
        scene.f5C99C0AC();
        return null;
    }
}
