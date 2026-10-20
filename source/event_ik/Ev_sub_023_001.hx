package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CE8BF4A7E080CD810")
@:expose("CE8BF4A7E080CD810")
class Ev_sub_023_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_sub023_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-287.32), 0.15, (-523.12), 105.23);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("npc_pokemon_sub023_1", lua.Table.create([(-277.43), 0.11, (-527.7)]), (-110.5), 13, 0, 0, "event_script", 0, true, false, 255, true);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub023_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub023_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-287.9), 1.52, (-521.57)]), lua.Table.create([(-3.16), (-32.62), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_023_001_talk_01", "sub_023", "npc_sub023_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T3000");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub023_001", "npc_pokemon_sub023_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub023_001", "npc_pokemon_sub023_1"));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-281.88), 0.47, (-527.03)]), lua.Table.create([(-1.13), (-52.51), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([(-281.45), 0.47, (-527.34)]), lua.Table.create([(-1.13), (-52.51), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        var moveHandle1 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub023_1", (-280.17), 0.11, (-528.3), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_023_001_talk_02", "sub_023", "npc_sub023_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-285.23), 0.15, (-524.52), 129.61);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub023_001", (-285.36), 0.15, (-525.25), 87.53);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub023_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub023_001", "npc_pokemon_sub023_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub023_1", 27);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_023_001_talk_03", "sub_023", "npc_sub023_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-285.89), 2.16, (-523.09)]), lua.Table.create([(-19.75), (-34.48), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([(-285.6), 1.98, (-523.51)]), lua.Table.create([(-19.75), (-34.48), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_023_001_talk_04", "sub_023", "npc_sub023_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub023_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub023_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_023_001_talk_05", "sub_023", "npc_sub023_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-281.18), 0.31, (-527.55)]), lua.Table.create([12.11, (-54.64), 6.48]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0023");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
