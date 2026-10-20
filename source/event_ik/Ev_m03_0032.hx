package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CCADD21B65DBBD784")
@:expose("CCADD21B65DBBD784")
class Ev_m03_0032 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_RIV:Dynamic;

    public function new()
    {
        this.CHR_RIV = "npc_main_rival_m";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M4DB_T1500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_M12DB_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -662.14, 0.01, -856.02, 15.9);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, -662.15, 0.03, -853.34, -175.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-663.81, 1.31, -856.97]), lua.Table.create([-5.48, -140.92, -0.0]), 40.0, 0, cameraEase);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_RIV, 32);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0032a_talk_01", "main_03_01", this.CHR_RIV);
        var menuLabels:Dynamic = (["msg_Ev_m03_0032a_select_01", "msg_Ev_m03_0032a_select_02", "msg_Ev_m03_0032a_select_03"]);
        var menuSelection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var menuSelectionAfterBranch4:Dynamic = null;
        if ((0 == menuSelection))
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 2);
            var cHR_RIV:Dynamic = this.CHR_RIV;
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0032a_talk_02", "main_03_01", cHR_RIV);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 1);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
            var postEventGlobal:Dynamic = untyped ext.gf.audio.SoundCommand.PostEventGlobal;
            postEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            menuSelectionAfterBranch4 = menuSelection;
        }
        else
        {
            var menuSelectionAfterBranch3:Dynamic = null;
            if ((1 == menuSelection))
            {
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 2);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "surprise_mc", "npc_main_rival_m");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0032a_talk_03", "main_03_01", this.CHR_RIV);
                var menuLabels2:Dynamic = (["msg_Ev_m03_0032a_select_04", "msg_Ev_m03_0032a_select_05"]);
                var menuSelection2:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels2, 0, true, false);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                var menuSelectionAfterBranch:Dynamic = null;
                if ((0 == menuSelection2))
                {
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 1);
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "sad2", "npc_main_rival_m");
                    main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.CHR_RIV);
                    var cHR_RIV2:Dynamic = this.CHR_RIV;
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0032a_talk_04", "main_03_01", cHR_RIV2);
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "normal", "npc_main_rival_m");
                    main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_RIV, 72.5);
                    this.TimeWait(0.5);
                    main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
                    main.event.ik.command.IkScriptCommand.UpdateReplace();
                    main.event.ik.command.IkScriptCommand.WaitReplace();
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_GMK_MK_BIG_01");
                    this.TimeWait(1.0);
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                    menuSelectionAfterBranch = (5 : Dynamic);
                }
                else
                {
                    if ((1 == menuSelection2))
                    {
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "normal", "npc_main_rival_m");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 1);
                        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
                        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
                        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                    }
                    else
                    {
                    };
                    menuSelectionAfterBranch = menuSelection2;
                };
                menuSelectionAfterBranch3 = menuSelectionAfterBranch;
            }
            else
            {
                if ((2 == menuSelection))
                {
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
                    var postEventGlobal2:Dynamic = untyped ext.gf.audio.SoundCommand.PostEventGlobal;
                    postEventGlobal2("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                }
                else
                {
                };
                menuSelectionAfterBranch3 = menuSelection;
            };
            menuSelectionAfterBranch4 = menuSelectionAfterBranch3;
        };
        untyped this.m_resultParam = menuSelectionAfterBranch4;
        this.TimeWait(0.5);
    }
}
