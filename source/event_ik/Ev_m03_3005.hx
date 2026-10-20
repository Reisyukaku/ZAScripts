package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C7F9706BF50921F79")
@:expose("C7F9706BF50921F79")
class Ev_m03_3005 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    public function new()
    {
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(untyped this.slot8, 0.0, 0.02, -18.0, 0.0);
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template(untyped this.slot8, 7);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(untyped this.slot8, "serious", untyped this.slot8);
        main.event.ik.command.IkScriptCommand.SetMegaRingTag();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(untyped this.slot8, 202);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_In("White", 0.1, true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-0.48, 1.32, -17.01]), lua.Table.create([0.0, -30.0, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        untyped this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.CreateRotomPhone(untyped this.slot8);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(untyped this.slot8);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(untyped this.slot8);
        main.event.ik.command.IkScriptCommand.LookAtRotomPhone(untyped this.slot8);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_3005_talk_01", "main_03_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_3005_talk_02", "main_03_01");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.38, 1.3, -17.3]), lua.Table.create([0.0, -30.0, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(untyped this.slot8);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_3005_talk_03", "main_03_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_3005_talk_04", "main_03_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_3005_talk_05", "main_03_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_3005_talk_06", "main_03_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.OpenTips("tips_1030");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_3005_talk_07", "main_03_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.14, 1.82, -21.49]), lua.Table.create([-6.58, -179.04, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ResetToFieldCamera(1);
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone(untyped this.slot8);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway(untyped this.slot8);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.Wait_ResetToFieldCamera();
    }
}
