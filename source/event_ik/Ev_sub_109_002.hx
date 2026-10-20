package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C64B1D9CCAE6974EE")
@:expose("C64B1D9CCAE6974EE")
class Ev_sub_109_002 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_pokemon_sub109_0"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -132.77, 0.02, -286.38, 160.55);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub109_0", -132.01, 0.0, -288.19, -27.77);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub109_0", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub109_0", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-136.06, 0.39, -289.02]), lua.Table.create([4.94, -114.34, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-135.45, 0.45, -288.74]), lua.Table.create([4.94, -114.34, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub109_0", 17);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_sub109_0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub109_0", -132.01, 0.01, -288.19, -24.79);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FIELD_VOL_ON");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-132.93, 0.77, -285.91]), lua.Table.create([-11.54, -21.77, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([-132.78, 0.68, -286.31]), lua.Table.create([-11.54, -21.77, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub109_0", -131.03, 0.01, -290.65, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_SUB_109_DISAPPEARANCE", lua.Table.create([-131.03, 0.01, -290.65]));
        var visibilityPulse1:Dynamic = 0;
        while (visibilityPulse1 < 6)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", false);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", true);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            visibilityPulse1 = untyped visibilityPulse1 + 1;
        };
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", false);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -132.83, 0.02, -288.12, 169.18);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-126.78, 1.99, -301.14]), lua.Table.create([-8.22, 11.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([-127.9, 1.99, -300.92]), lua.Table.create([-8.22, 11.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_sub109_001", lua.Table.create([-131.46, 0.0, -286.85]), 178.44, "npc_child02_a_m_01");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub109_0", -124.55, 0.01, -311.43, -120.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub109_0", -127.24, 0.01, -312.65, 0.5);
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_SUB_109_APPEARANCE", lua.Table.create([-124.55, 0.01, -311.43]));
        var visibilityPulse2:Dynamic = 0;
        while (visibilityPulse2 < 6)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", true);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", false);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            visibilityPulse2 = untyped visibilityPulse2 + 1;
        };
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", true);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_SUB_109_DISAPPEARANCE", lua.Table.create([-127.24, 0.01, -312.65]));
        var visibilityPulse3:Dynamic = 0;
        while (visibilityPulse3 < 5)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", false);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", true);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            visibilityPulse3 = untyped visibilityPulse3 + 1;
        };
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", false);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub109_0", -134.47, 0.0, -316.51, -123.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub109_0", -137.48, 0.0, -317.66, 0.5);
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_SUB_109_APPEARANCE", lua.Table.create([-134.47, 0.0, -316.51]));
        var visibilityPulse4:Dynamic = 0;
        while (visibilityPulse4 < 4)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", true);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", false);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            visibilityPulse4 = untyped visibilityPulse4 + 1;
        };
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", true);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_SUB_109_DISAPPEARANCE", lua.Table.create([-137.48, 0.0, -317.66]));
        var visibilityPulse5:Dynamic = 0;
        while (visibilityPulse5 < 4)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", false);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", true);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            visibilityPulse5 = untyped visibilityPulse5 + 1;
        };
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", false);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub109_001", "anger_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-132.1, 1.5, -289.8]), lua.Table.create([-8.22, 11.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-131.99, 1.5, -286.51]), lua.Table.create([-8.22, 11.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_sub109_001", -131.82, 0.0, -290.2, 2.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_npc_sub109_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_npc_sub109_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_sub109_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_npc_sub109_001", 32, null, 3.75);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_109_010_talk_02", "sub_109", "dyn_npc_sub109_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
    }
}
