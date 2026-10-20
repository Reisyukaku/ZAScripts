package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC1BC73B6586E5BCB")
@:expose("CC1BC73B6586E5BCB")
class Ev_m03_0125 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_RIV:Dynamic;

    @:abiSlot(9)
    public var CHR_PLY:Dynamic;

    @:abiSlot(10)
    public var CHR_MACHI:Dynamic;

    public function new()
    {
        this.CHR_MACHI = "npc_main_detective";
        this.CHR_PLY = "npc_main_rival_m";
        this.CHR_RIV = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_detective"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = null;
        scenario = this;
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_MACHI, 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_PLY, 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, (-444.53), 0.22, (-169.36), 12.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MACHI, (-444.53), 0.25, (-167.87), 173.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-443.13), 0.25, (-168.28), (-128.0));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-446.12), 1.77, (-169.75)]), lua.Table.create([(-10.11), (-119.42), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))), null, null, null, null);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T3000");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MACHI, "rejoice_big_mc", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MACHI, 2);
        var callback:Dynamic = function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[10], 15);
            return null;
        };
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m03_0125_talk_01", "main_03_01", this.CHR_MACHI, null, null, callback);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0125_talk_02", "main_03_01", this.CHR_MACHI);
        var menuLabels:Dynamic = (["msg_Ev_m03_0125_select_01", "msg_Ev_m03_0125_select_02"]);
        var selection:Dynamic = (main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        if (0 == (selection : Dynamic))
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MACHI, "normal", "npc_main_detective");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MACHI, 1);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0125_talk_04", "main_03_01", this.CHR_MACHI);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-444.8), 1.65, (-168.84)]), lua.Table.create([(-0.0), (-163.07), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([(-444.76), 1.67, (-168.72)]), lua.Table.create([(-0.0), (-163.07), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m03_0125_talk_06", "main_03_01", this.CHR_MACHI, null, null, (function():Dynamic
            {
                scenario.F32FAD7D4DF3ACA95(0.3);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[10], "confident", "npc_main_detective");
                return null;
            }));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-446.12), 1.77, (-169.75)]), lua.Table.create([(-10.11), (-119.42), (-0.0)]), 40.0, 0, cameraEase, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_MACHI, "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 2);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", "npc_main_rival_m");
            var cHRPLY:Dynamic = this.CHR_PLY;
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0125_talk_05", "main_03_01", cHRPLY);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            var fadeOutType:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
            fadeOutType(7);
        }
        else
        {
            if (1 == (selection : Dynamic))
            {
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MACHI, "normal", "npc_main_detective");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MACHI, 1);
                var cHRMACHI:Dynamic = this.CHR_MACHI;
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0125_talk_03", "main_03_01", cHRMACHI);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                var fadeOut:Dynamic = untyped main.event.ik.command.IkScriptCommand.Fade_Out;
                fadeOut("transition_fade_inout", 0.1, true);
            };
        };
        untyped this.m_resultParam = selection;
    }
}
