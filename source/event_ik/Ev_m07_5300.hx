package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CEEB54511978FB591")
@:expose("CEEB54511978FB591")
class Ev_m07_5300 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_HAL:Dynamic;

    @:abiSlot(10)
    public var CHR_KARA:Dynamic;

    @:abiSlot(11)
    public var CHR_JIPU:Dynamic;

    public function new()
    {
        this.CHR_JIPU = "dyn_jipu";
        this.CHR_KARA = "dyn_kara";
        this.CHR_HAL = "npc_main_pa_leader";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_pa_leader", "npc_main_co_boss", "npc_main_co_leader"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = null;
        scenario = this;
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_HAL, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5300_talk_01", "main_07_01", this.CHR_HAL);
        var menuLabels:Dynamic = (["msg_Ev_m07_5300_select_01", "msg_Ev_m07_5300_select_02"]);
        var selection:Dynamic = (main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (0 == (selection : Dynamic))
        {
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_pa_boss", 22.18, 0.03, (-7.63), (-118.66));
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ju_boss", 2.18, 0.02, (-0.43), 127.05);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_KARA, lua.Table.create([15.87, 0.03, (-14.28)]), 180.0, "npc_main_co_boss");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_JIPU, lua.Table.create([2.06, 0.01, (-2.03)]), 122.0, "npc_main_co_leader");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_HAL);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, 15.78, 0.03, (-13.94), 0.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KARA, 15.78, 0.03, (-10.13), 180.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_HAL, 19.91, 0.02, (-12.01), (-90.0));
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_JIPU, 2.06, 0.01, (-2.03), 122.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([10.83, 4.06, (-12.23)]), lua.Table.create([(-2.84), (-91.35), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([10.83, 1.49, (-12.23)]), lua.Table.create([(-2.84), (-91.35), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
            this.TimeWait(2.0);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_HAL, 33);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5300_talk_03", "main_07_01", this.CHR_HAL);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.81, 1.42, (-11.12)]), lua.Table.create([(-2.84), 178.86, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KARA, 20);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_JIPU, 1);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5300_talk_04", "main_07_01", this.CHR_KARA);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5300_talk_05", "main_07_01", this.CHR_KARA);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync(this.CHR_KARA);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([16.51, 1.47, (-11.16)]), lua.Table.create([(-7.58), 134.59, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(1, "msg_Ev_m07_5300_talk_06", "main_07_01", this.CHR_JIPU, null, null, (function():Dynamic
            {
                scenario.F32FAD7D4DF3ACA95(1.0);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[10], scenario[11], "head");
                scenario.F32FAD7D4DF3ACA95(1.0);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([3.37, 1.64, (-2.89)]), lua.Table.create([(-7.5), 134.02, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[11], 23);
                scenario.F32FAD7D4DF3ACA95(2.0);
                return null;
            }));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.81, 1.42, (-11.12)]), lua.Table.create([(-2.84), 178.86, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))), null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            this.TimeWait(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_KARA);
            var callback:Dynamic = function():Dynamic
            {
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[10], "irritation", "npc_main_co_boss");
                scenario.F32FAD7D4DF3ACA95(0.5);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(scenario[10], 175);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                return null;
            };
            main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m07_5300_talk_07", "main_07_01", this.CHR_KARA, null, null, callback);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KARA, "normal", "npc_main_co_boss");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KARA, 14);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5300_talk_08", "main_07_01", this.CHR_KARA);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KARA, "rejoice_big", "npc_main_co_boss");
            var cHRKARA:Dynamic = this.CHR_KARA;
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5300_talk_09", "main_07_01", cHRKARA);
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
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5300_talk_02", "main_07_01", cHRHAL);
                var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
                hideMessageWindow();
            };
        };
        untyped this.m_resultParam = selection;
    }
}
