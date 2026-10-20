package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C91674963D41FA00D")
@:expose("C91674963D41FA00D")
class Ev_sub_025_040 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub025_001", "npc_sub025_002", "npc_pokemon_sub025_1", "npc_pokemon_sub025_2"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub025_2", -313.91, 0.1, -570.95, -53.97);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub025_1", -316.9, 0.11, -572.44, -2.59);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -317.41, 0.01, -568.15, 141.64);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub025_001", -315.51, 0.11, -570.2, -47.95);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub025_002", -316.26, 0.11, -570.4, -16.81);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub025_2", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub025_1", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_sub025_001", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_sub025_002", false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub025_002", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub025_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub025_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-316.84, 2.9, -565.7]), lua.Table.create([-7.84, -4.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-316.84, 1.45, -565.7]), lua.Table.create([-7.84, -4.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub025_002", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_025_040_talk_01", "sub_025", "npc_sub025_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub025_001", "npc_sub025_002", "head");
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_S");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-315.66, 1.71, -569.3]), lua.Table.create([-7.64, 32.18, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(29, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([-315.32, 1.71, -569.52]), lua.Table.create([-7.64, 32.18, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(29, Int)));
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_025_040_talk_02", "sub_025", "npc_sub025_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub025_002", "npc_sub025_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub025_1", "npc_sub025_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub025_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_025_040_talk_03", "sub_025", "npc_sub025_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub025_002", 174);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub025_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub025_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub025_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        var leadPokemon:Dynamic = main.event.ik.command.IkScriptCommand.GetPlayerPartyUnitParam(0);
        main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(2, cast(leadPokemon.f0DE6FCA9(), Int));
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub025_002", "irritation", "npc_sub025_002");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub025_001", "irritation", "npc_sub025_001");
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_M");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-316.35, 1.18, -569.49]), lua.Table.create([0.0, 142.66, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(31, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.4, lua.Table.create([-316.78, 1.35, -568.92]), lua.Table.create([0.0, 142.66, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(31, Int)));
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_025_040_talk_10", "sub_025", "npc_sub025_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_sub025_1");
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_L");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-316.69, 1.26, -567.28]), lua.Table.create([-5.91, -14.85, 7.33]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(29, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-316.69, 1.26, -567.28]), lua.Table.create([-5.91, -14.85, -15.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(29, Int)));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub025_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_025_040_talk_06", "sub_025", "npc_sub025_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub025_002", "normal", "npc_sub025_002");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub025_001", "normal", "npc_sub025_001");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-316.88, 1.52, -565.18]), lua.Table.create([-7.84, -4.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-316.84, 1.45, -565.7]), lua.Table.create([-7.84, -4.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub025_002", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_025_040_talk_07", "sub_025", "npc_sub025_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-316.87, 1.72, -569.97]), lua.Table.create([-9.88, -67.67, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub025_001", "npc_sub025_002", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub025_2", "npc_sub025_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub025_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_025_040_talk_08", "sub_025", "npc_sub025_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-315.32, 1.71, -569.52]), lua.Table.create([-7.64, 32.18, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub025_002", "npc_sub025_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub025_1", "npc_sub025_002", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub025_002", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_025_040_talk_09", "sub_025", "npc_sub025_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-316.99, 1.45, -565.75]), lua.Table.create([-7.84, -4.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub025_001");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub025_001", -310.62, 0.11, -568.01, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub025_002", -311.85, 0.1, -568.4, 2.0);
        var turnAction = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_pokemon_sub025_1", 68.76);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub025_2", -309.19, 0.1, -570.01, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnAction);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub025_1", -310.56, 0.11, -570.06, 2.0);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0025");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
    }
}
