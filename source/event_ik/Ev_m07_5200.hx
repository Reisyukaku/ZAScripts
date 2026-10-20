package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CE59F0A11924B51C6")
@:expose("CE59F0A11924B51C6")
class Ev_m07_5200 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_HAL:Dynamic;

    @:abiSlot(10)
    public var CHR_SIRO:Dynamic;

    public function new()
    {
        this.CHR_SIRO = "dyn_siro";
        this.CHR_HAL = "npc_main_pa_leader";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_ju_boss", "npc_main_pa_leader"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = null;
        scenario = this;
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_HAL, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5200_talk_01", "main_07_01", this.CHR_HAL);
        var menuLabels:Dynamic = (["msg_Ev_m07_5200_select_01", "msg_Ev_m07_5200_select_02"]);
        var selection:Dynamic = (main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (0 == (selection : Dynamic))
        {
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_pa_boss", 22.18, 0.03, (-7.63), (-118.66));
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_HAL);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 2);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_SIRO, lua.Table.create([15.87, 0.03, (-14.28)]), 180.0, "npc_main_ju_boss");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, 15.78, 0.03, (-13.94), 0.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_SIRO, 15.78, 0.03, (-10.13), 180.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_HAL, 19.91, 0.02, (-12.01), (-90.0));
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_SIRO, "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_SIRO, this.CHR_PLY, "head");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([10.83, 4.06, (-12.23)]), lua.Table.create([(-2.84), (-91.35), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([10.83, 1.49, (-12.23)]), lua.Table.create([(-2.84), (-91.35), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
            this.TimeWait(1.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_SIRO, 1);
            this.TimeWait(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_HAL, 33);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5200_talk_03", "main_07_01", this.CHR_HAL);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.15, 1.9, (-10.44)]), lua.Table.create([(-4.6), (-91.65), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))), null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5200_talk_04", "main_07_01", this.CHR_SIRO);
            main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m07_5200_talk_05", "main_07_01", this.CHR_SIRO, null, null, (function():Dynamic
            {
                scenario.F32FAD7D4DF3ACA95(0.7);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[10], "head");
                return null;
            }));
            var cHRSIRO:Dynamic = this.CHR_SIRO;
            var callback:Dynamic = function():Dynamic
            {
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario[10]);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(scenario[10], 175);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[10], "serious", "npc_main_ju_boss");
                return null;
            };
            main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m07_5200_talk_06", "main_07_01", cHRSIRO, null, null, callback);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            var fadeOutType:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
            fadeOutType(7);
        }
        else
        {
            if (1 == (selection : Dynamic))
            {
                var cHRHAL:Dynamic = this.CHR_HAL;
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5200_talk_02", "main_07_01", cHRHAL);
                var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
                hideMessageWindow();
            };
        };
        untyped this.m_resultParam = selection;
    }
}
