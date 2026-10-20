package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C2C792B764794D65E")
@:expose("C2C792B764794D65E")
class Ev_sub_098_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub098_001", "npc_sub098_002", "npc_sub098_003"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var gimmick:Dynamic = main.event.ik.command.IkScriptCommand.SD2850AEE9F875155("obj_quest_gimmick_tsuta_00");
        if (!lua.abi.Host.truthy(gimmick))
        {
            main.event.ik.command.IkScriptCommand.S40ACEF14A8745A74("world/ik_obj_template/effect/field/gimmick/field_item303a", "test1", lua.Table.create([-771.6703, 0.0034082765, -196.84404]), 100.72157);
        }
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -773.83, 0.02, -206.67, 25.88);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub098_001", -773.42, 0.0, -204.78, -104.63);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub098_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var effectKey = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-774.79, 1.38, -207.95]), lua.Table.create([-7.68, -135.14, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-775.14, 1.38, -207.61]), lua.Table.create([-7.68, -135.14, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub098_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub098_001", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_001_talk_01", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_001_talk_02", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_001_talk_03", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub098_001", lua.Table.create([-773.39, 1.25, -199.18]));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Pos("npc_sub098_001", lua.Table.create([-773.39, 1.25, -199.18]));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-775.19, 1.37, -202.08]), lua.Table.create([-7.59, -145.89, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([-773.91, 1.07, -200.19]), lua.Table.create([-7.59, -145.89, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_098_001_talk_04", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-775.14, 1.38, -207.61]), lua.Table.create([-7.68, -135.14, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub098_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub098_001", "Player");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub098_001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_001_talk_05", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub098_001", 21);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub098_001", "surprise");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_001_talk_06", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub098_001", 32, null, 5.85);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub098_001", "serious");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_001_talk_07", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0098");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
    }
}
