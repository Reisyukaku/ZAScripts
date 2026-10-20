package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C64B1DACCAE6976A1")
@:expose("C64B1DACCAE6976A1")
class Ev_sub_109_003 extends BaseSubQuest
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
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FIELD_VOL_ON");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -156.94, 0.02, -326.11, -110.89);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub109_0", -159.94, -0.0, -327.69, 61.09);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-157.69, 1.0, -326.71]), lua.Table.create([-16.04, 66.36, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-158.17, 0.85, -326.92]), lua.Table.create([-16.04, 66.36, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_sub109_001", lua.Table.create([-158.03, 0.01, -325.75]), 169.17, "npc_child02_a_m_01");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub109_0", 17);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub109_0", -157.42, -0.0, -337.87, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_SUB_109_DISAPPEARANCE", lua.Table.create([-159.94, -0.0, -327.69]));
        var visibilityPulse1:Dynamic = 0;
        while (visibilityPulse1 < 5)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", false);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", true);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            visibilityPulse1 = untyped visibilityPulse1 + 1;
        };
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", false);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub109_0", -158.89, 0.0, -337.24, 166.44);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-156.33, 1.52, -325.24]), lua.Table.create([-8.6, 15.78, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub109_0", -157.95, 0.0, -340.26, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub109_0", "head");
        var appearancePosition:Dynamic = lua.Table.create([-157.95, 0.0, -340.26]);
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_SUB_109_APPEARANCE", appearancePosition);
        var visibilityPulse2:Dynamic = 0;
        while (visibilityPulse2 < 4)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", true);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", false);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            visibilityPulse2 = untyped visibilityPulse2 + 1;
        };
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", true);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_SUB_109_DISAPPEARANCE", appearancePosition);
        var visibilityPulse3:Dynamic = 0;
        while (visibilityPulse3 < 4)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", false);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", true);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            visibilityPulse3 = untyped visibilityPulse3 + 1;
        };
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", false);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub109_0", -153.05, 0.68, -354.42, -19.29);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub109_0", 20);
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_SUB_109_APPEARANCE", lua.Table.create([-153.05, 0.69, -354.69]));
        var visibilityPulse4:Dynamic = 0;
        while (visibilityPulse4 < 5)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", true);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", false);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            visibilityPulse4 = untyped visibilityPulse4 + 1;
        };
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", true);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -158.96, 0.01, -328.19, 172.01);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-153.04, 1.29, -350.07]), lua.Table.create([-5.7, 3.6, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub109_0", 17);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub109_001", "serious");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-157.53, 1.29, -330.17]), lua.Table.create([-5.7, 3.6, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-158.4, 1.29, -326.38]), lua.Table.create([-5.7, 3.6, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_sub109_001", -158.2, 0.01, -328.52, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_sub109_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_npc_sub109_001", "Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_npc_sub109_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub109_001", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
    }
}
