package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C6430F273C495B495")
@:expose("C6430F273C495B495")
class Ev_m01_0190 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var textResourcePath = untyped main.event.ik.command.TextResourceManager.GetTextResourcePath("script/elevator");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 1.05, 0.01, -9.73, -179.67));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([3.11, 1.05, -7.19]), lua.Table.create([0.94, 25.44, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(6, Int)), null, null, null, null);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m01_0190_sys_01", "main_01_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_elevator_01", "elevator");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_m01_0190_select_03", "msg_Ev_m01_0190_select_01"], 0, true, false);
        if (0 == selection)
        {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_EV_DO_OP");
            main.event.ik.command.IkScriptCommand.PlayAnimeFieldObj("t1_i001", "t1_i001_elevatordoor", "open", "trigger");
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([1.03, 1.25, -7.74]), lua.Table.create([0.0, -0.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(6, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([1.05, 1.25, -8.58]), lua.Table.create([0.0, -0.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(6, Int)), null, null, null);
            var playerMovement = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 1.05, 0.01, -12.39, 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerMovement);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 0.0);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_EV_DO_CL");
            main.event.ik.command.IkScriptCommand.PlayAnimeFieldObj("t1_i001", "t1_i001_elevatordoor", "close", "trigger");
            main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_EV_OP");
        }
        else
        {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        untyped this.m_resultParam = selection;
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
