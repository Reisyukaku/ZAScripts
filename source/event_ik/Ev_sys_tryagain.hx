package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C19F5AE9CDDFFC88B")
@:expose("C19F5AE9CDDFFC88B")
class Ev_sys_tryagain extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        var textResourcePath:String = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/field_event");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 7);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "sad");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ENV_OFF");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_fld_loss_01", "field_event");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_GAMEOVER_TR");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal");
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
