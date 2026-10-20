package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C91603D63D4196CFB")
@:expose("C91603D63D4196CFB")
class Ev_sub_025_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = ([]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-317.8), 0.01, (-569.24), 153.59);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub025_2", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub025_001", false);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("AABOKKU", lua.Table.create([(-315.17), 0.1, (-571.38)]), (-63.48), 24, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("EV_NPC1", lua.Table.create([(-316.63), 0.1, (-570.8)]), (-23.65), "npc_co_member_m_00");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "EV_NPC1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("EV_NPC1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub025_002", "Player", "head");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-317.38), 2.62, (-567.28)]), lua.Table.create([(-11.94), (-1.2), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-317.38), 1.63, (-567.28)]), lua.Table.create([(-11.94), (-1.2), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("EV_NPC1", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_025_020_talk_01", "sub_025", "EV_NPC1");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-320.15), 0.15, (-569.82)]), lua.Table.create([14.32, (-27.85), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_025_020_talk_02", "sub_025", "npc_sub025_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-319.86), 0.35, (-570.28)]), lua.Table.create([14.32, (-27.85), (-12.07)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub025_1", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_025_020_talk_05", "sub_025", "npc_sub025_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
