package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CDC88EF118D07245B")
@:expose("CDC88EF118D07245B")
class Ev_m07_5100 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_KANA:Dynamic;

    @:abiSlot(10)
    public var CHR_HAL:Dynamic;

    public function new()
    {
        this.CHR_HAL = "npc_main_pa_leader";
        this.CHR_KANA = "dyn_kana";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_ga_boss", "npc_main_pa_leader"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_HAL, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5100_talk_01", "main_07_01", this.CHR_HAL);
        var choices = (["msg_Ev_m07_5100_select_01", "msg_Ev_m07_5100_select_02"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(choices, 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection)))
        {
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_pa_boss", 22.18, 0.03, -7.63, -118.66);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_HAL);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_KANA, lua.Table.create([15.87, 0.03, -14.28]), 180.0, "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, 15.78, 0.03, -13.94, 0.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KANA, 15.78, 0.03, -10.13, 180.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_HAL, 19.91, 0.02, -12.01, -90.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([10.83, 4.06, -12.23]), lua.Table.create([-2.84, -91.35, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([10.83, 1.49, -12.23]), lua.Table.create([-2.84, -91.35, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
            this.TimeWait(1.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 1);
            this.TimeWait(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_HAL, 33);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5100_talk_03", "main_07_01", this.CHR_HAL);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 333);
            var cameraEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.81, 1.43, -11.27]), lua.Table.create([-2.84, 179.7, 0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5100_talk_04", "main_07_01", this.CHR_KANA);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KANA, "serious", "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_KANA);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5100_talk_05", "main_07_01", this.CHR_KANA);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped main.event.ik.command.IkScriptCommand.FadeOutType(7);
        }
        else if (((1 == selection)))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5100_talk_02", "main_07_01", this.CHR_HAL);
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        untyped this.m_resultParam = selection;
    }
}
