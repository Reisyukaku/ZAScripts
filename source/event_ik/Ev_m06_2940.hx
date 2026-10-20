package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CDDAD8E24B21739A5")
@:expose("CDDAD8E24B21739A5")
class Ev_m06_2940 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    public function new()
    {
        this.slot9 = "npc_main06_0002";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var eventMode:Dynamic = untyped m_eventScriptParam.f73EE8FEC();
        if ((("1" == eventMode)))
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot9, "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2940_talk_01", "main_06_01", this.slot9);
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 1.32, 1.01, 4.3, 35.46);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, 1.83, 1.0, 5.25, -161.24);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            var cameraEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.15, 2.28, 4.18]), lua.Table.create([0.0, -105.53, 0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot9, 32, null, 3.8);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "rejoice_big_mc", this.slot9);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2940_talk_02", "main_06_01", this.slot9);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "normal", this.slot9);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2940_talk_03", "main_06_01", this.slot9);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2940_talk_23", "main_06_01", this.slot9);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "sad2", this.slot9);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2940_talk_04", "main_06_01", this.slot9);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2940_talk_05", "main_06_01", this.slot9);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            this.TimeWait(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot9, -90.0);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "rejoice_big_mc", this.slot9);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2940_talk_06", "main_06_01", this.slot9);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S");
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        };
    }
}
