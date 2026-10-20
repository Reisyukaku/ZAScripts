package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C21429C3AA0A02287")
@:expose("C21429C3AA0A02287")
class Ev_sub_071_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub071_001", "npc_pokemon_sub071_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -459.21, 0.23, -393.63, 74.27);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub071_001", -457.17, 0.23, -393.28, -91.83);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub071_1");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub071_1", -457.38, 0.22, -392.65, -129.42);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub071_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub071_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub071_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-460.59, 1.93, -393.72]), lua.Table.create([-20.16, -78.74, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-460.45, 1.93, -393.03]), lua.Table.create([-20.16, -78.74, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub071_001", 2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub071_001", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_071_001_talk_01", "sub_071", "npc_sub071_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-458.47, 0.76, -393.11]), lua.Table.create([-14.56, -114.19, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub071_1", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_071_001_talk_02", "sub_071", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-459.4, 0.43, -392.43]), lua.Table.create([5.7, -75.79, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub071_001", "npc_pokemon_sub071_1", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_071_001_talk_03", "sub_071", "npc_sub071_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub071_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_071_001_talk_04", "sub_071", "npc_sub071_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-460.45, 1.93, -393.03]), lua.Table.create([-20.16, -78.74, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub071_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub071_001", 1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub071_001", "confident");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_071_001_talk_05", "sub_071", "npc_sub071_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0071");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub071_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_071_001_talk_06", "sub_071", "npc_sub071_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
