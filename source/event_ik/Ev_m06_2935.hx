package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CDDA39924B20EF7D1")
@:expose("CDDA39924B20EF7D1")
class Ev_m06_2935 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    public function new()
    {
        this.slot9 = "dyn_mob";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_TRANSITION_OUT");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot9, lua.Table.create([(-0.15), 0.01, 1.88]), (-29.935), "npc_main06_0002");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-0.19), 0.88, 11.15, 157.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, 0.83, 0.86, 8.77, (-18.86));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.7, 2.26, 12.32]), lua.Table.create([(-4.61), 10.09, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot8, 0.0, 0.88, 10.8, 0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot9, 32, null, 3.8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2935_talk_01", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2935_talk_02", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2935_talk_03", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, 0.31, 0.88, 10.19, (-179.77));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
