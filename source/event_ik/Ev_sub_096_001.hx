package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C77F4C3636B404470")
@:expose("C77F4C3636B404470")
class Ev_sub_096_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub096_001", "npc_pokemon_sub096_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub096_001", -624.43, 6.16, -444.0, 150.61);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -623.43, 6.16, -445.21, -34.51);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub096_1", -625.1, 6.15, -444.05, 117.01);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub096_1");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-623.4, 7.88, -446.59]), lua.Table.create([-16.97, 163.01, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub096_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub096_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub096_001", 19);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub096_001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_096_001_talk_01", "sub_096", "npc_sub096_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-624.36, 7.22, -445.32]), lua.Table.create([-28.36, 151.94, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub096_1", 25);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-623.4, 7.88, -446.59]), lua.Table.create([-16.97, 163.01, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub096_001", 18);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub096_001", "serious");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub096_1", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_096_001_talk_03", "sub_096", "npc_sub096_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub096_001", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_096_001_talk_05", "sub_096", "npc_sub096_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub096_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_096_001_talk_06", "sub_096", "npc_sub096_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub096_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_096_001_talk_08", "sub_096", "npc_sub096_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0096");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
