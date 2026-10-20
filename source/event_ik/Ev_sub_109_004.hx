package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C64B1DBCCAE697854")
@:expose("C64B1DBCCAE697854")
class Ev_sub_109_004 extends BaseSubQuest
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
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -153.95, 0.02, -351.56, 172.24);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub109_0", -153.01, 0.68, -354.48, -19.29);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-152.88, 1.17, -352.72]), lua.Table.create([-7.9, 5.46, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub109_0", 17);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_sub109_001", lua.Table.create([-153.74, 0.0, -348.8]), 150.26, "npc_child02_a_m_01");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([-152.08, 1.17, -352.8]), lua.Table.create([-7.9, 5.46, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub109_0", false);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub109_0", -147.97, 1.29, -366.41, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_SUB_109_DISAPPEARANCE", lua.Table.create([-153.05, 0.69, -354.71]));
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
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub109_0", -147.94, 1.24, -366.51, -19.29);
        var appearancePosition:Dynamic = lua.Table.create([-147.94, 1.24, -366.51]);
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_SUB_109_APPEARANCE", appearancePosition);
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
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-147.72, 1.89, -364.5]), lua.Table.create([-13.95, 7.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub109_0", 16);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_pokemon_sub109_0", 160.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_SUB_109_DISAPPEARANCE", appearancePosition);
        var visibilityPulse3:Dynamic = 0;
        while (visibilityPulse3 < 6)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", false);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", true);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            visibilityPulse3 = untyped visibilityPulse3 + 1;
        };
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", false);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub109_0", -147.59, 1.29, -367.59, -19.29);
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_SUB_109_APPEARANCE", lua.Table.create([-147.59, 1.29, -367.59]));
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
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub109_0", 21);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_POYAN");
        main.event.ik.command.IkScriptCommand.FObj_Falling("npc_pokemon_sub109_0", 3.2, 1.5, 2);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-151.99, 1.62, -353.29]), lua.Table.create([-13.95, 7.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-153.22, 1.62, -350.19]), lua.Table.create([-13.95, 7.75, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_sub109_001", -152.7, 0.0, -353.13, 2.0));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_npc_sub109_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub109_001", 22);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
    }
}
