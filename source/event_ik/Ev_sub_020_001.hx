package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CD12B5A471C0D220D")
@:expose("CD12B5A471C0D220D")
class Ev_sub_020_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub020_001", "npc_pokemon_sub_020_001_01", "npc_pokemon_sub_020_002_01"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-150.86), 1.55, (-594.43), 169.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub020_001", (-150.47), 1.57, (-595.12), (-147.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub_020_001_01", (-151.97), 1.55, (-594.86), 93.75);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub_020_002_01", (-150.77), 1.55, (-597.26), 3.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub020_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub020_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub020_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub020_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-151.91), 3.18, (-594.18)]), lua.Table.create([(-19.6), (-62.38), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub020_001", 72, null, 5.35);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_020_001_talk_01", "sub_020", "npc_sub020_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub020_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_020_001_talk_02", "sub_020", "npc_sub020_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub020_001", 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub020_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_020_001_talk_03", "sub_020", "npc_sub020_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub020_001", "npc_pokemon_sub_020_001_01", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-151.41), 3.29, (-593.12)]), lua.Table.create([(-28.03), 8.67, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-150.98), 3.29, (-593.18)]), lua.Table.create([(-28.03), 8.67, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub_020_001_01", "npc_sub020_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub_020_002_01", "npc_sub020_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub020_001", 72, null, 5.35);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_020_001_talk_04", "sub_020", "npc_sub020_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub020_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_020_001_talk_05", "sub_020", "npc_sub020_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_020_001_talk_06", "sub_020", "npc_sub020_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub020_001", "normal");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-153.21), 3.07, (-592.57)]), lua.Table.create([(-15.77), (-36.41), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub020_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub_020_001_01", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub_020_002_01", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub020_001", 72, null, 5.35);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_020_001_talk_07", "sub_020", "npc_sub020_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0020");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub020_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub020_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_020_001_talk_08", "sub_020", "npc_sub020_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
