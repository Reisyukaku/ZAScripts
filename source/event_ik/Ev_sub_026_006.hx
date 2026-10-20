package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C01A7D99F669CC866")
@:expose("C01A7D99F669CC866")
class Ev_sub_026_006 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub026_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub026_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub026_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub026_3", -319.45, 0.03, -283.61, 125.9);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub026_4", -318.05, 0.02, -283.31, 159.38);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub026_2", -319.24, 0.02, -284.79, 105.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-324.42, 2.77, -279.93]), lua.Table.create([-7.59, -53.17, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(5, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub026_3", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub026_2", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.21);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub026_4", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-320.92, 2.13, -282.55]), lua.Table.create([-7.59, -53.17, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(5, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub026_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_026_005_talk_06", "sub_026", "npc_sub026_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
    }
}
