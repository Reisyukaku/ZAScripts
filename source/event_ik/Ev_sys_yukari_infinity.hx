package event_ik;

import main.event.ik.base.BaseSubQuest;
import main.event.ik.command.IkScriptCommand;
import main.event.ik.command.IkScriptCommand.EaseCameraType;
import cppbindings.Vector3Values as Vector3;
import cppbindings.CDDCCFBA7 as Client;
import ext.gf.audio.SoundCommand;
import cppbindings.C56DE81E7;

@:keep
@:chunk("event_ik")
@:hashAbi("CED8A008EB74E1F64")
@:expose("CED8A008EB74E1F64")
class Ev_sys_yukari_infinity extends BaseSubQuest
{
    @:abiSlot(8)
    public var slot8:Int;

    public function new()
    {
        slot8 = 999999;
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        if (((untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC() == "0") || (untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC() == "1"))) {
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        } else {
            this.F86C2CE59EBF934B7();
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 15.79, 0.03, -13.55, 12.51);
        if ((untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC() == "1")) {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([15.01, 1.17, -11.95] : Array<Float>)))), ((lua.Table.create(([0.97, -24.31, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
        } else {
            if ((untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC() == "3")) {
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([15.01, 1.17, -11.95] : Array<Float>)))), ((lua.Table.create(([0.97, -24.31, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            } else {
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([14.74, 1.43, -14.99] : Array<Float>)))), ((lua.Table.create(([-5.93, -153.77, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            };
        };
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_pa_boss", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_pa_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_pa_leader", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_pa_leader", 14.95, 0.02, -10.76, 170.51);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        this.m_resultParam = 0;
        var mode:String = untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC();
        @:ast(switch (mode) {
            case "0":{
                IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_01", "yukari_infinity", "npc_main_pa_boss");
                IkScriptCommand.HideMessageWindow();
                IkScriptCommand.SetFacialTemplate("npc_main_pa_boss", "rejoice_small_mc");
                IkScriptCommand.FObj_Set_Animation("npc_main_pa_boss", 2);
                IkScriptCommand.Camera_Move_Angle(0.0, new Vector3(15.29, 1.45, -12.96), new Vector3(-3.86, -149.42, 0.0), 40.0, 0, EaseCameraType._new(3));
                IkScriptCommand.Wait_Camera();
                IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_02", "yukari_infinity", "npc_main_pa_boss");
                IkScriptCommand.HideMessageWindow();
                IkScriptCommand.FObj_Set_Animation("npc_main_pa_boss", 1);
                IkScriptCommand.Camera_Move_Angle(0.0, new Vector3(14.74, 1.43, -14.99), new Vector3(-5.93, -153.77, 0.0), 40.0, 0, EaseCameraType._new(3));
                IkScriptCommand.Wait_Camera();
                IkScriptCommand.SetFacialTemplate("npc_main_pa_boss", "normal");
                IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_03", "yukari_infinity", "npc_main_pa_boss");
                IkScriptCommand.HideMessageWindow();
                F7763F2FA909F7D71(true);
            };
            case "1":{
                FA22EB2FBCA242794();
                IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_04", "yukari_infinity", "npc_main_pa_boss");
                IkScriptCommand.HideMessageWindow();
                IkScriptCommand.Wait_Time(0.5);
                IkScriptCommand.Camera_Move_Angle(0.0, new Vector3(14.74, 1.43, -14.99), new Vector3(-5.93, -153.77, 0.0), 40.0, 0, EaseCameraType._new(3));
                IkScriptCommand.Wait_Camera();
                F7763F2FA909F7D71(true);
            };
            case "2":{
                SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
                var action = IkScriptCommand.FObj_Set_Animation("npc_main_pa_boss", 20);
                IkScriptCommand.SetFacialTemplate("npc_main_pa_boss", "rejoice_big");
                IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_09", "yukari_infinity", "npc_main_pa_boss");
                var choice = IkScriptCommand.ShowContextMenu(["msg_yukari_infinit_select_03", "msg_yukari_infinit_select_04"], 0, true, false);
                IkScriptCommand.Wait_FObj_Action(action);
                if (choice == 0) {
                    BattleStart(false);
                    return;
                };
                SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
                F81CF53784EF312A3();
                action = IkScriptCommand.FObj_Set_Animation("npc_main_pa_boss", 19);
                IkScriptCommand.SetFacialTemplate("npc_main_pa_boss", "sad");
                IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_09_2", "yukari_infinity", "npc_main_pa_boss");
                choice = IkScriptCommand.ShowContextMenu(["msg_yukari_infinit_select_05", "msg_yukari_infinit_select_06"], 0, true, false);
                IkScriptCommand.Wait_FObj_Action(action);
                if (choice == 0) {
                    BattleStart(false);
                    return;
                };
                IkScriptCommand.FObj_Set_Animation("npc_main_pa_boss", 25);
                IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_10", "yukari_infinity", "npc_main_pa_boss");
                IkScriptCommand.HideMessageWindow();
                IkScriptCommand.Wait_FObj_Action();
                FFCAA4C90FEB35110();
            };
            case "3":{
                FFCAA4C90FEB35110();
            };
            default:
        }) switch mode {
            case "0":{
                {
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_01", "yukari_infinity", "npc_main_pa_boss");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_pa_boss", "rejoice_small_mc");
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_pa_boss", 2);
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([15.29, 1.45, -12.96] : Array<Float>)))), ((lua.Table.create(([-3.86, -149.42, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_02", "yukari_infinity", "npc_main_pa_boss");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_pa_boss", 1);
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([14.74, 1.43, -14.99] : Array<Float>)))), ((lua.Table.create(([-5.93, -153.77, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_pa_boss", "normal");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_03", "yukari_infinity", "npc_main_pa_boss");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    this.F7763F2FA909F7D71(true);
                };
            };
            case "1":{
                {
                    this.FA22EB2FBCA242794();
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_04", "yukari_infinity", "npc_main_pa_boss");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([14.74, 1.43, -14.99] : Array<Float>)))), ((lua.Table.create(([-5.93, -153.77, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    this.F7763F2FA909F7D71(true);
                };
            };
            case "2":{
                {
                    ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
                    var action:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_pa_boss", 20);
                    main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_pa_boss", "rejoice_big");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_09", "yukari_infinity", "npc_main_pa_boss");
                    var choice:StdTypes.Int = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_yukari_infinit_select_03", "msg_yukari_infinit_select_04"], 0, true, false);
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action(action);
                    if ((choice == 0)) {
                        this.BattleStart(false);
                        return;
                    };
                    ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
                    this.F81CF53784EF312A3();
                    action = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_pa_boss", 19);
                    main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_pa_boss", "sad");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_09_2", "yukari_infinity", "npc_main_pa_boss");
                    choice = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_yukari_infinit_select_05", "msg_yukari_infinit_select_06"], 0, true, false);
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action(action);
                    if ((choice == 0)) {
                        this.BattleStart(false);
                        return;
                    };
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_pa_boss", 25);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_10", "yukari_infinity", "npc_main_pa_boss");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    this.FFCAA4C90FEB35110();
                };
            };
            case "3":{
                {
                    this.FFCAA4C90FEB35110();
                };
            };
            default:{ };
        };
    }

    public function F7763F2FA909F7D71(explain:Bool = false):Dynamic
    {
        if (explain) {
            while (true) {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_05", "yukari_infinity", "npc_main_pa_boss");
                var choice:StdTypes.Int = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_yukari_infinit_select_01", "msg_yukari_infinit_select_07", "msg_yukari_infinit_select_02"], 0, true, false);
                if ((choice == 0)) {
                    this.BattleStart();
                    break;
                };
                if ((choice == 1)) {
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_01", "yukari_infinity", "npc_main_pa_boss");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_pa_boss", "rejoice_small_mc");
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_pa_boss", 2);
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([15.29, 1.45, -12.96] : Array<Float>)))), ((lua.Table.create(([-3.86, -149.42, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_02", "yukari_infinity", "npc_main_pa_boss");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_pa_boss", 1);
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([14.74, 1.43, -14.99] : Array<Float>)))), ((lua.Table.create(([-5.93, -153.77, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_pa_boss", "normal");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_03", "yukari_infinity", "npc_main_pa_boss");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    continue;
                };
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_08", "yukari_infinity", "npc_main_pa_boss");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                break;
            };
        } else {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_05", "yukari_infinity", "npc_main_pa_boss");
            var choice:StdTypes.Int = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_yukari_infinit_select_01", "msg_yukari_infinit_select_02"], 0, true, false);
            if ((choice == 0)) {
                this.BattleStart();
            } else {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_08", "yukari_infinity", "npc_main_pa_boss");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            };
        };
        return null;
    }

    @:hashAbi("F7EBF5E2C3188A31D")
    public function BattleStart(showMessage:Bool = true):Dynamic
    {
        if (showMessage) {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_pa_boss", "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_yukari_infinit_talk_06", "yukari_infinity", "npc_main_pa_boss");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([15.75, 1.4, -13.06] : Array<Float>)))), ((lua.Table.create(([1.93, -179.37, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_pa_boss", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_pa_boss", 14);
        this.F8A65748AC25AD382();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_07", "yukari_infinity", "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
        this.m_resultParam = 1;
        return null;
    }

    public function FFCAA4C90FEB35110():Dynamic
    {
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_GAME_OVER");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([15.01, 1.17, -11.95] : Array<Float>)))), ((lua.Table.create(([0.97, -24.31, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.F81CF53784EF312A3();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_11", "yukari_infinity", "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_pa_boss", "rejoice_small_mc");
        var action:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_pa_boss", 20);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([15.75, 1.43, -12.99] : Array<Float>)))), ((lua.Table.create(([-1.11, -179.26, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, ((lua.Table.create(([15.76, 1.48, -12.82] : Array<Float>)))), ((lua.Table.create(([-1.11, -179.26, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_yukari_infinit_talk_12", "yukari_infinity", "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(action);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        return null;
    }

    public function FA22EB2FBCA242794():Dynamic
    {
        IkScriptCommand.WordSet_Number(2, IkScriptCommand.GetWorkValue("SYS_WORK_YUKARI_Inf_COUNT_RECORD"), 6);
        return null;
    }

    public function F81CF53784EF312A3(increment:Int = 0):Dynamic
    {
        var count = IkScriptCommand.GetWorkValue("SYS_WORK_YUKARI_Inf_COUNT") + increment;
        if (count > slot8)
        {
            count = slot8;
        }
        IkScriptCommand.WordSet_Number(2, count, 6);
        return null;
    }

    public function F8A65748AC25AD382():Dynamic
    {
        F81CF53784EF312A3(1);
        return null;
    }

    public function F86C2CE59EBF934B7():Dynamic
    {
        var record:StdTypes.Int = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_YUKARI_Inf_COUNT_RECORD");
        var count:StdTypes.Int = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_YUKARI_Inf_COUNT");
        if ((count > this.slot8)) {
            count = this.slot8;
            cppbindings.C56DE81E7.f0EC8F36E("SYS_WORK_YUKARI_Inf_COUNT", count);
        };
        if ((record < count)) {
            cppbindings.CDDCCFBA7.f1B77253E("party_tournament_win", 1);
            cppbindings.C56DE81E7.f0EC8F36E("SYS_WORK_YUKARI_Inf_COUNT_RECORD", count);
        };
        return null;
    }
}
