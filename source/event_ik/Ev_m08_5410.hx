package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CA4652449CDA491CE")
@:expose("CA4652449CDA491CE")
class Ev_m08_5410 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var textResourcePath:Dynamic = untyped main.event.ik.command.TextResourceManager.GetTextResourcePath("script/elevator");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 0.58, 0.01, 24.66, 16.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([2.18, 2.13, 24.5]), lua.Table.create([(-29.77), 109.49, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([2.28, 2.13, 24.8]), lua.Table.create([(-29.77), 109.49, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([1.73, 1.88, 25.22]));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TOUCH_CARD");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m08_5410_talk_03", "main_08_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-0.07), 0.01, 23.93, 0.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-1.1), 1.23, 22.72]), lua.Table.create([1.31, (-148.82), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m08_5410_talk_02", "main_08_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_elevator_01", "elevator");
        var choices = (["msg_select_labo_02", "msg_select_labo_03", "msg_select_cancel"]);
        var selection:Dynamic = (main.event.ik.command.IkScriptCommand.ShowContextMenu(choices, 0, true, false, null, null, "elevator"));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (0 == selection)
        {
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped this.m_resultParam = 0;
        };
        if (1 == selection)
        {
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped this.m_resultParam = 1;
        };
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
