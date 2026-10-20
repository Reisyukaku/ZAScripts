package event_ik;

import main.event.ik.base.BaseMainScenario;

import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;
import main.event.ik.command.IkScriptCommand.EaseCameraType;
import cppbindings.Vector3Values as Vector3;

@:keep
@:chunk("event_ik")
@:hashAbi("C639A7999A2BDDB04")
@:expose("C639A7999A2BDDB04")
class Ev_m02_0134 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("HORUBII", ((lua.Table.create(([-655.03, 0.15, -944.79] : Array<Float>)))), -111.01, 659, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", ((lua.Table.create(([-681.91, 0.0, -938.78] : Array<Float>)))), -1.5, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("dyn_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -681.78, 0.01, -937.76, 177.06);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-682.85, 1.43, -936.95] : Array<Float>)))), ((lua.Table.create(([-6.12, -39.77, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_OFF");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small", "npc_main_rival_m");
        var rivalAnimation:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0134_talk_01", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0134_talk_02", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(rivalAnimation);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0134_talk_03", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0134_talk_04", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-660.68, 0.66, -945.67] : Array<Float>)))), ((lua.Table.create(([-9.4, -57.04, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("dyn_main_rival_m", true);
        var horubiiMove:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("HORUBII", -658.53, -0.0, -947.02, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -674.52, 0.01, -941.38, 125.63);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -674.78, 0.0, -942.47, 101.62);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(horubiiMove);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("HORUBII", -658.44, -0.0, -947.11, -86.94);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-677.01, 1.69, -939.46] : Array<Float>)))), ((lua.Table.create(([-11.54, -55.49, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("HORUBII", 31);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0134_talk_05", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0134_talk_06", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", 13.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -168.44);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0134_talk_08", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.OpenTips("tips_2005");
        var rivalAnimation2:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0134_talk_12", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(rivalAnimation2);
        main.event.ik.command.IkScriptCommand.OpenTips("tips_2010");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
