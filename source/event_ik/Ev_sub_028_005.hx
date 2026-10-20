package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C3506B02068CE9B49")
@:expose("C3506B02068CE9B49")
class Ev_sub_028_005 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:String = "denki";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/ew00/ew0084/ew0084_bullet", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.SetEffectWorldScale(effectKey, 0.1);
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(effectKey, -367.52, 20.55, -97.67);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_npc_pokemon_sub028_1", lua.Table.create([-362.67, 19.79, -97.18]), -89.26, 702, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_npc_pokemon_sub028_1", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("Player", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -371.94, 19.82, -100.99, 46.8);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 27);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-379.98, 19.84, -105.76]), lua.Table.create([-17.92, -122.87, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-379.98, 23.89, -105.76]), lua.Table.create([-17.92, -122.87, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_npc_pokemon_sub028_1", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-370.77, 20.34, -98.51]), lua.Table.create([-4.25, -104.95, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_npc_pokemon_sub028_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_pokemon_sub028_1", -367.52, 19.79, -97.67, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_pokemon_sub028_1", 39);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.PlayEffect(effectKey);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_028_010_talk_01", "sub_028", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_pokemon_sub028_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_pokemon_sub028_1", 21);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-373.93, 21.17, -101.01]), lua.Table.create([-4.25, -104.95, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_npc_pokemon_sub028_1");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_pokemon_sub028_1", -376.35, 19.92, -92.76, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_028_010_talk_02", "sub_028");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "dyn_npc_pokemon_sub028_1");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_npc_pokemon_sub028_1", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-371.86, 21.17, -104.71]), lua.Table.create([-9.19, 160.63, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-371.21, 21.37, -105.63]), lua.Table.create([-9.19, 160.63, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_028_010_talk_03", "sub_028");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
