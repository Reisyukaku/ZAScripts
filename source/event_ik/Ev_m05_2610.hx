package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CB935365FEA72A49E")
@:expose("CB935365FEA72A49E")
class Ev_m05_2610 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    @:abiSlot(10)
    public var CHR_SIRO:Dynamic;

    @:abiSlot(11)
    public var CHR_MUKU:Dynamic;

    public function new()
    {
        this.CHR_MUKU = "dyn_muku";
        this.CHR_SIRO = "dyn_siro";
        this.slot9 = "dyn_machi";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_detective", "npc_main_ju_boss", "npc_main_ju_leader"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = null;
        var key:Dynamic = null;
        scenario = this;
        key = "ef_line";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", key);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(key);
        }));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MUKU, lua.Table.create([(-40.31), 6.01, (-271.46)]), (-100.0), "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_SIRO, lua.Table.create([(-40.31), 6.01, (-271.46)]), (-100.0), "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MUKU, "normal", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-39.9), 6.01, (-264.65), (-0.87));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MUKU, (-39.95), 6.0, (-263.16), 180.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_SIRO, (-38.91), 6.0, (-269.06), (-0.87));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-41.22), 7.58, (-266.26)]), lua.Table.create([(-11.17), (-148.7), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2610_talk_01", "main_05_01", this.CHR_MUKU);
        var selection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m05_2610_select_01", "msg_Ev_m05_2610_select_02"]), 0, true, false));
        var cameraVector:Dynamic = lua.Table.create([(-40.25), 7.34, (-264.02)]);
        var cameraVector2:Dynamic = lua.Table.create([(-7.46), (-155.8), (-0.0)]);
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector, cameraVector2, 40.0, 0, cameraEase, null, null, null);
        var waitCamera:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Camera;
        waitCamera();
        if (0 == selection)
        {
            main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_2610_talk_03", "main_05_01", this.CHR_MUKU, null, null, (function():Dynamic
            {
                main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario[11]);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[11], 18);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[11], "serious", "npc_main_detective");
                return null;
            }));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MUKU, 333);
            this.TimeWait(0.5);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2610_MUSCLE_WHOOSH01");
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(key);
            var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-40.7), 6.8, (-264.79)]), lua.Table.create([10.92, (-153.24), (-0.0)]), 40.0, 0, cameraEase2, null, null, null);
            var cHRMUKU:Dynamic = this.CHR_MUKU;
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m05_2610_talk_04", "main_05_01", cHRMUKU);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FadeEffect(key);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            var fadeOutType:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
            fadeOutType(7);
        }
        else
        {
            var cHRMUKU2:Dynamic = this.CHR_MUKU;
            var callback:Dynamic = function():Dynamic
            {
                main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario[11]);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[11], 19);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[11], "normal", "npc_main_detective");
                scenario.F32FAD7D4DF3ACA95(0.5);
                return null;
            };
            main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_2610_talk_02", "main_05_01", cHRMUKU2, null, null, callback);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            var fadeOut:Dynamic = untyped main.event.ik.command.IkScriptCommand.Fade_Out;
            fadeOut("transition_fade_inout", 0.1, true);
        };
        untyped this.m_resultParam = selection;
        main.event.ik.command.IkScriptCommand.RemoveAllTagEffect();
    }
}
