package event_ik;

import main.event.ik.base.BaseMainScenario;

import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;
import main.event.ik.command.IkScriptCommand.EaseCameraType;
import cppbindings.Vector3Values as Vector3;

@:keep
@:chunk("event_ik")
@:hashAbi("C639A7899A2BDD951")
@:expose("C639A7899A2BDD951")
class Ev_m02_0133 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.SA9FF85CB1BCD2DA4();
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", ((lua.Table.create(([-681.91, 0.0, -938.78] : Array<Float>)))), -1.5, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("dyn_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -681.78, 0.01, -937.76, 177.06);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-682.85, 1.43, -936.95] : Array<Float>)))), ((lua.Table.create(([-6.12, -39.77, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var rivalAnimation:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0133_talk_01", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0133_talk_02", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(rivalAnimation);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small", "npc_main_rival_m");
        var rivalAnimation2:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0133_talk_03", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(rivalAnimation2);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
