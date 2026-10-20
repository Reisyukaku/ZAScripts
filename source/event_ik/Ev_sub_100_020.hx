package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CC5109A1BD8ED1B31")
@:expose("CC5109A1BD8ED1B31")
class Ev_sub_100_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = ([]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped (untyped main.event.ik.command.IkScriptCommand.ExecuteBGMCommand)("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        untyped (untyped main.event.ik.command.IkScriptCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_STRONG_LOOP_ON");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(2, "msg_Ev_sub_100_255_sys_01", "sub_100");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", 0.25);
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_Fade)();
        untyped (untyped main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template)("Player", 0);
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)("Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("Player", 201);
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.4);
        untyped (untyped main.event.ik.command.IkScriptCommand.Fade_In)("transition_fade_inout", 0.25);
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_Fade)();
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        untyped (untyped main.event.ik.command.IkScriptCommand.StartItemGetSequenceAuto)();
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.5);
        untyped (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", 0.25);
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_Fade)();
        untyped (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("Player", "normal");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)("Player");
    }
}
