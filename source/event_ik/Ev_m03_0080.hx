package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CCABE8DB65DA1DE79")
@:expose("CCABE8DB65DA1DE79")
class Ev_m03_0080 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([-506.83, 0.0, -415.72]), -148.64, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -507.77, 0.01, -417.46, 38.86);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-506.81, 1.5, -416.84]), lua.Table.create([-10.24, 178.71, (-0.0)]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-507.48, 1.56, -418.97]), lua.Table.create([-10.24, 178.71, (-0.0)]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0080_talk_01", "main_03_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", -2.14);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0080_talk_02", "main_03_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-506.29, 1.6, -394.42]));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0080_talk_05", "main_03_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0080_talk_03", "main_03_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_rival_m", -506.29, 0.01, -394.42, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T1000");
    }
}
