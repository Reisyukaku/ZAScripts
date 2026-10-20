package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C6FBC9F5127059166")
@:expose("C6FBC9F5127059166")
class Ev_m04_5010 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_TARA:Dynamic;

    public function new()
    {
        untyped (this)[9] = "dyn_tara";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_ga_leader"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic((untyped this.CHR_TARA), lua.Table.create([13.72, 0.01, -1.15]), 167.642, "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(untyped this.CHR_PLY, 8.98, 0.01, -5.36, 121.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(untyped this.CHR_TARA, 14.54, 0.0, -8.34, 110.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(untyped this.CHR_PLY, 12.96, 0.01, -7.82, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(untyped this.CHR_TARA, 16.88, 0.0, -9.89, 0.5);
        untyped this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([18.34, 1.38, -12.53]), lua.Table.create([1.27, 142.01, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([18.34, 0.63, -12.53]), lua.Table.create([1.27, 142.01, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0, true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(untyped this.CHR_TARA, -73.5);
        untyped this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.31, 0.79, -9.92]), lua.Table.create([0.0, -92.86, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([15.31, 0.94, -9.92]), lua.Table.create([0.0, -92.86, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(untyped this.CHR_TARA, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5010_talk_04", "main_04_01", untyped this.CHR_TARA);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
    }
}
