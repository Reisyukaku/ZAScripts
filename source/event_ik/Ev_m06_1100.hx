package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CB1990C1E50A1CDB2")
@:expose("CB1990C1E50A1CDB2")
class Ev_m06_1100 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    @:abiSlot(10)
    public var slot10:Dynamic;

    @:abiSlot(11)
    public var slot11:Dynamic;

    @:abiSlot(12)
    public var slot12:Dynamic;

    public function new()
    {
        this.slot12 = "dyn_sita_2";
        this.slot11 = "dyn_sita_1";
        this.slot10 = "npc_main_friend_f";
        this.slot9 = "dyn_jipu";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_co_member_m_00", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_co_member_f_00", false);
        main.event.ik.command.IkScriptCommand.S156410CEE281BFF8(this.slot11, lua.Table.create([-326.7, 0.0, -645.64]), -157.35, 56);
        main.event.ik.command.IkScriptCommand.S156410CEE281BFF8(this.slot12, lua.Table.create([-325.69, 0.0, -645.99]), -163.34, 62);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot9, lua.Table.create([-326.53, 0.0, -647.15]), -161.23, "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 201);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot12, 201);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot9, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot9, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot12, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, -326.54, 0.01, -649.51, 4.16);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, -327.99, 0.0, -645.91, 172.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, -324.82, 0.0, -646.77, -151.24);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_04_LOW");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-326.87, 1.47, -648.23]), lua.Table.create([0.0, -162.84, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1100_talk_01", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-327.28, 1.31, -648.53]), lua.Table.create([0.02, -33.62, 0.0]), 40.0, 0, (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.slot9, this.slot8);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m06_1100_select_01", "msg_Ev_m06_1100_select_02"]), 0, true, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((1 == selection)))
        {
            var cameraEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-328.08, 1.24, -650.58]), lua.Table.create([0.0, -139.52, 0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 2);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1100_talk_02", "main_06_01", this.slot9);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_LOW");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        }
        else
        {
            var cameraEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-328.08, 1.24, -650.58]), lua.Table.create([0.0, -139.52, 0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 14);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1100_talk_03", "main_06_01", this.slot9);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1100_talk_04", "main_06_01", this.slot9);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_03");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        };
        main.event.ik.command.IkScriptCommand.S0EA2B6C4A18DBEE5("npc_co_member_f_00");
        main.event.ik.command.IkScriptCommand.S0EA2B6C4A18DBEE5("npc_co_member_m_00");
        untyped this.m_resultParam = selection;
    }
}
