package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C6B721673C84B7665")
@:expose("C6B721673C84B7665")
class Ev_m01_0015 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.StartLoadingFadeAnimationScene(3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_M01_0015_A");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([2000.06, 2.13, 14.95]), lua.Table.create([0.03, -178.79, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.WaitLoadingFadeAnimationScene();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M6DB_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Fade_In("White", 0.1);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_M01_0015_B");
        main.event.ik.command.IkScriptCommand.FadeOutEnum(3, 0, true);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.DisableDirectionalMain();
        main.event.ik.command.IkScriptCommand.DisableShadowTransform();
        main.event.ik.command.IkScriptCommand.EventMapChange_NoLoadingIcon("t1", -792.78, 2.0, -903.01, 0, 39.79, 0);
    }
}
