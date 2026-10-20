package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C2C75A6764791BE88")
@:expose("C2C75A6764791BE88")
class Ev_sub_098_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_sub098_001", "npc_sub098_002", "npc_sub098_003"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        main.event.ik.command.IkScriptCommand.S40ACEF14A8745A74("world/ik_obj_template/effect/field/gimmick/field_item303a", "test1", lua.Table.create([-772.52, 0.0, -194.26]), 148.5);
        main.event.ik.command.IkScriptCommand.S40ACEF14A8745A74("world/ik_obj_template/effect/field/gimmick/field_item303a", "test2", lua.Table.create([-767.9, 0.0, -189.44]), 157.58);
        main.event.ik.command.IkScriptCommand.S40ACEF14A8745A74("world/ik_obj_template/effect/field/gimmick/field_item303a", "test3", lua.Table.create([-766.34, 0.0, -195.96]), 6.07);
        main.event.ik.command.IkScriptCommand.SBE4399F61C307041();
        main.event.ik.command.IkScriptCommand.S5AED1F1B5B2A7020();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -775.37, 0.02, -204.92, 96.11);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub098_001", -773.42, 0.01, -204.78, -93.08);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub098_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub098_001", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-776.42, 1.29, -204.06]), lua.Table.create([-2.02, -62.72, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var animationHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub098_001", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_010_talk_01", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub098_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_010_talk_02", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub098_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Pos("npc_sub098_001", lua.Table.create([-773.39, 1.25, -199.18]));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub098_001", 21);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_010_talk_03", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Pos("Player", lua.Table.create([-773.39, 1.25, -199.18]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "surprise");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-772.99, 1.34, -201.53]), lua.Table.create([-4.24, -146.87, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-774.12, 1.34, -200.79]), lua.Table.create([-4.24, -146.87, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -775.37, 0.01, -204.92, 85.89);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub098_001", -773.42, 0.01, -204.78, -94.11);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-773.39, 1.25, -199.18]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub098_001", lua.Table.create([-773.39, 1.25, -199.18]));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub098_001", "serious");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub098_001", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_010_talk_04", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-776.42, 1.29, -204.06]), lua.Table.create([-2.02, -62.72, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub098_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub098_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub098_001", 33, null, 4.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_010_talk_05", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_010_talk_06", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub098_001", 1);
        main.event.ik.command.IkScriptCommand.S3E36C5EB9EFAF0F8();
    }
}
