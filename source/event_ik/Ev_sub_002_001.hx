package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CF90B7427E3692AB5")
@:expose("CF90B7427E3692AB5")
class Ev_sub_002_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub002_001", "npc_pokemon_sub002_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-563.84), 0.15, (-254.89), (-79.97));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub002_001", (-565.59), 0.15, (-254.61), 81.87);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub002_1", (-565.64), 0.14, (-253.35), 151.09);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub002_1");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub002_1");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub002_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub002_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub002_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-563.09), 1.53, (-256.73)]), lua.Table.create([(-8.81), 144.14, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub002_001", "serious");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "Ev_sub_002_001_10", "sub_002", "npc_sub002_001");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["Ev_sub_002_001_10_select_01", "Ev_sub_002_001_10_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub002_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "Ev_sub_002_001_20", "sub_002", "npc_sub002_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-564.82), 1.48, (-255.23)]), lua.Table.create([7.0, 130.88, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "Ev_sub_002_001_30", "sub_002", "npc_sub002_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub002_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "Ev_sub_002_001_40", "sub_002", "npc_sub002_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-564.09), 1.66, (-254.98)]), lua.Table.create([(-5.43), 104.33, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.1, lua.Table.create([(-564.64), 1.68, (-254.84)]), lua.Table.create([(-5.43), 104.33, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub002_001", "anger");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_S");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "Ev_sub_002_001_50", "sub_002", "npc_sub002_001", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-564.64), 1.68, (-254.84)]), lua.Table.create([(-5.43), 104.33, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.1, lua.Table.create([(-564.99), 1.72, (-254.76)]), lua.Table.create([(-5.43), 104.33, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_M");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "Ev_sub_002_001_60", "sub_002", "npc_sub002_001", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-565.0), 2.3, (-255.14)]), lua.Table.create([(-38.85), 145.51, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([(-565.0), 2.05, (-255.14)]), lua.Table.create([(-38.85), 145.51, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub002_001", "serious");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub002_001", "npc_pokemon_sub002_1", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "Ev_sub_002_001_70", "sub_002", "npc_sub002_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub002_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub002_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub002_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "Ev_sub_002_001_80", "sub_002", "npc_sub002_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-564.82), 1.48, (-255.23)]), lua.Table.create([7.0, 130.88, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub002_001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "Ev_sub_002_001_90", "sub_002", "npc_sub002_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-563.09), 1.53, (-256.73)]), lua.Table.create([(-8.81), 144.14, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub002_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "Ev_sub_002_001_100", "sub_002", "npc_sub002_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0002");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub002_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_sub002_1");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub002_001", (-564.08), 0.15, (-246.22), 2.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub002_1", (-564.08), 0.15, (-246.22), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
    }
}
