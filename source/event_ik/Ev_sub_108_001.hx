package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C2AA5FEF527266118")
@:expose("C2AA5FEF527266118")
class Ev_sub_108_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub108_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -136.9, 0.12, -790.77, -57.37);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub108_001", -138.85, 0.1, -790.01, 83.4);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub108_1", -137.73, 0.52, -788.64, 157.15);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-136.89, 1.73, -792.35]), lua.Table.create([-16.45, 159.0, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub108_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_001_talk_01", "sub_108", "npc_sub108_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_001_talk_02", "sub_108", "npc_sub108_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub108_001", "sad2");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_001_talk_03", "sub_108", "npc_sub108_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_001_talk_04", "sub_108", "npc_sub108_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-138.36, 1.4, -790.55]), lua.Table.create([-14.16, 142.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub108_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_001_talk_05", "sub_108", "npc_sub108_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_001_talk_06", "sub_108", "npc_sub108_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-137.89, 1.6, -790.32]), lua.Table.create([-20.53, -171.57, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub108_1", 14);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_001_talk_07", "sub_108", "npc_sub108_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_001_talk_08", "sub_108", "npc_sub108_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-136.89, 1.73, -792.35]), lua.Table.create([-16.45, 159.0, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_001_talk_09", "sub_108", "npc_sub108_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub108_001", "sad2");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_001_talk_10", "sub_108", "npc_sub108_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub108_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_001_talk_11", "sub_108", "npc_sub108_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub108_1", 20);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub108_001", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_001_talk_12", "sub_108", "npc_sub108_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0108");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub108_1", -137.78, 0.52, -788.6, 177.15));
    }
}
