package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CD1244D471C06ED48")
@:expose("CD1244D471C06ED48")
class Ev_sub_020_020 extends BaseSubQuest
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
        main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("npc_sub020_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-153.2), 1.55, (-596.33), 22.27);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub020_001", (-153.24), 1.57, (-594.81), (-173.71));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub_020_001_01", (-152.06), 1.54, (-594.36), (-119.25));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub_020_002_01", (-151.54), 1.54, (-594.82), (-100.54));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub020_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub020_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub_020_001_01", "npc_sub020_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub_020_002_01", "npc_sub020_001", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub020_001", "sad");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-155.04), 3.78, (-597.03)]), lua.Table.create([(-15.14), (-124.91), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-155.04), 3.18, (-597.03)]), lua.Table.create([(-15.14), (-124.91), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub020_001", 22);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_020_020_talk_01", "sub_020", "npc_sub020_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub020_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub020_001", 33, null, 4.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub020_001", 2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_020_020_talk_02", "sub_020", "npc_sub020_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub020_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_020_020_talk_03", "sub_020", "npc_sub020_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub020_001", "npc_pokemon_sub_020_001_01", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub020_001", "surprise2");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-154.19), 3.35, (-595.99)]), lua.Table.create([(-23.88), (-124.65), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_020_020_talk_04", "sub_020", "npc_sub020_001", false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub_020_001_01", 25);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub_020_002_01", 25);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub020_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub020_001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_020_020_talk_05", "sub_020", "npc_sub020_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_020_020_talk_06", "sub_020", "npc_sub020_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-155.04), 3.18, (-597.03)]), lua.Table.create([(-15.14), (-124.91), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub020_001", "Player", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub020_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub020_001", 33, null, 4.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_020_020_talk_07", "sub_020", "npc_sub020_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_020_020_talk_08", "sub_020", "npc_sub020_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub020_001", "npc_pokemon_sub_020_001_01", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub_020_001_01", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub_020_002_01", 20);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub020_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub020_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub020_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_020_020_talk_09", "sub_020", "npc_sub020_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0020");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub020_001", (-150.47), 1.57, (-595.12), (-147.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub_020_001_01", (-151.97), 1.55, (-594.86), 93.75);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub_020_002_01", (-150.77), 1.55, (-597.26), 3.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_sub020_001", 70);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
