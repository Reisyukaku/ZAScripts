package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C24FFFB6A856CA08A")
@:expose("C24FFFB6A856CA08A")
class Ev_sub_094_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_sub094_001", "npc_pokemon_sub094_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub094_1");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -764.81, 0.15, -114.88, 131.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub094_001", -764.08, 0.15, -115.75, -54.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub094_1", -764.08, 1.52, -114.71, -111.78);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub094_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub094_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-766.54, 1.9, -116.0]), lua.Table.create([-12.18, -108.26, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_001_talk_01", "sub_094", "npc_sub094_001");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_094_001_select_01", "msg_Ev_sub_094_001_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub094_001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_001_talk_02", "sub_094", "npc_sub094_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-765.44, 1.35, -116.66]), lua.Table.create([6.42, -140.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub094_001", "serious");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub094_001", "npc_pokemon_sub094_1", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_001_talk_03", "sub_094", "npc_sub094_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub094_1", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub094_001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_001_talk_05", "sub_094", "npc_sub094_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub094_1", 53);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub094_001", "head");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_094_001_select_03", "msg_Ev_sub_094_001_select_04"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub094_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-765.5, 1.3, -115.19]), lua.Table.create([13.51, -67.85, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(8.0, lua.Table.create([-765.11, 1.4, -115.35]), lua.Table.create([13.51, -67.85, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        var animationHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub094_001", 28);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub094_001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_001_talk_06", "sub_094", "npc_sub094_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub094_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_001_talk_07", "sub_094", "npc_sub094_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub094_001", 32, null, 3.85);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub094_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_001_talk_08", "sub_094", "npc_sub094_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-766.54, 1.9, -116.0]), lua.Table.create([-12.18, -108.26, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub094_001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_001_talk_09", "sub_094", "npc_sub094_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_001_talk_10", "sub_094", "npc_sub094_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0094");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
