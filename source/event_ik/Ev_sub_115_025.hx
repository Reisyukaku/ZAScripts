package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C20374AFA282E4824")
@:expose("C20374AFA282E4824")
class Ev_sub_115_025 extends BaseSubQuest
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
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-763.9, 21.39, -241.28]), lua.Table.create([-22.28, -72.2, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub115_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub115_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub115_1", -760.4, 19.69, -241.54, -92.05);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -762.96, 19.7, -241.83, 89.34);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub115_1", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_115_025_talk_01", "sub_115", "npc_pokemon_sub115_1", false, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_sub115_1");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub115_1", -757.97, 19.69, -241.21, 2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-762.05, 27.79, -234.34]), lua.Table.create([-14.1, -74.31, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub115_1", -731.93, 25.52, -236.07, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(3.5);
        main.event.ik.command.IkScriptCommand.ShowMessage_Auto(1.0, 2, "msg_Ev_sub_115_025_talk_02", "sub_115");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
