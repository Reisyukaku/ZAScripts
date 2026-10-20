package event_ik;

import main.event.ik.base.BaseMainScenario;

import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;
import main.event.ik.command.IkScriptCommand.EaseCameraType;
import cppbindings.Vector3Values as Vector3;

@:keep
@:chunk("event_ik")
@:hashAbi("C22444F12177B826C")
@:expose("C22444F12177B826C")
class Ev_m10_9220 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "sad", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Force("Player", 1);
        var playerPosition:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -832.63, -5.65, -596.81, 56.89);
        var xerneasPosition:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_Xerneas", -828.41, -5.45, -594.55, -118.45);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerPosition);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(xerneasPosition);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("Player", 203));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, ((lua.Table.create(([-832.16, -4.27, -595.88] : Array<Float>)))), ((lua.Table.create(([-2.24, 18.89, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("VS_BOSS_05_STOP");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET_WITHOUT_PM");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player"));
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m10_9220_talk_01", "main_10_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m10_9220_talk_02", "main_10_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "main_Xerneas", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
    }
}
