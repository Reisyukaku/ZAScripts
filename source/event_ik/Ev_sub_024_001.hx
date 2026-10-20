package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CB0087290F35AA879")
@:expose("CB0087290F35AA879")
class Ev_sub_024_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub024_001", "npc_pokemon_sub024_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-569.83), 0.01, (-702.38), 121.14);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub024_001", (-567.94), 0.01, (-703.23), (-50.66));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub024_1", (-567.59), 0.0, (-702.36), (-78.61));
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub024_1");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub024_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub024_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-570.49), 1.35, (-700.4)]), lua.Table.create([(-9.51), (-32.76), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_001_talk_02", "sub_024", "npc_sub024_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub024_001", "npc_pokemon_sub024_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub024_001", "npc_pokemon_sub024_1");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-569.84), 1.78, (-700.69)]), lua.Table.create([(-22.36), (-46.67), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_001_talk_03", "sub_024", "npc_sub024_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub024_1", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_001_talk_04", "sub_024", "npc_sub024_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_001_talk_05", "sub_024", "npc_sub024_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub024_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub024_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub024_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub024_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-570.49), 1.35, (-700.4)]), lua.Table.create([(-9.51), (-32.76), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_001_talk_06", "sub_024", "npc_sub024_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_001_talk_07", "sub_024", "npc_sub024_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0024");
    }
}
