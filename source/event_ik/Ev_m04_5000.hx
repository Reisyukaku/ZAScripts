package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C6FC025512708AAEF")
@:expose("C6FC025512708AAEF")
class Ev_m04_5000 extends BaseMainScenario
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
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_TARA, lua.Table.create([0.69, 0.01, -1.7]), 167.642, "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -0.8, 0.01, -1.92, -180.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_TARA, -0.82, 0.3, -3.66, 0.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.13, 1.55, -0.93]), lua.Table.create([-10.13, 31.34, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([0.13, 1.55, -0.93]), lua.Table.create([-10.13, 31.34, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_TARA, "head");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_TARA, 32, null, 1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5000_talk_01", "main_04_01", this.CHR_TARA);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5000_talk_03", "main_04_01", this.CHR_TARA);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m04_5000_select_01", "msg_Ev_m04_5000_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_TARA, 32, null, 1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5000_talk_04", "main_04_01", this.CHR_TARA);
        var choices = (["msg_Ev_m04_5000_select_03", "msg_Ev_m04_5000_select_04"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(choices, 0, true, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_TARA, 18);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.3, true);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_TARA, "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_TARA, this.CHR_PLY, "head");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.21, 0.99, 2.23]), lua.Table.create([-1.99, 2.15, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -0.8, 0.01, -1.92, 35.1);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_TARA, 0.4, 0.0, -1.02, -140.1);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.3, true);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
            var explanationAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_TARA, 32, null, 1.0);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5000_talk_02", "main_04_01", this.CHR_TARA);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var cameraPosition = lua.Table.create([0.21, 0.99, 2.23]);
            var cameraAngle = lua.Table.create([-1.99, -5.94, 0.0]);
            var cameraEase = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, cameraPosition, cameraAngle, 40.0, 0, cameraEase, null, null, null);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_TARA);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(explanationAnimation);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_TARA, 100.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_TARA, 1.26, 0.0, -1.35, 0.5);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_TARA, 74);
            this.TimeWait(1.0);
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_ROOM_OP");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.CHR_TARA);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_TARA, 19);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5000_talk_05", "main_04_01", this.CHR_TARA);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        };
        untyped this.m_resultParam = selection;
    }
}
