package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CC33BFB509976C55D")
@:expose("CC33BFB509976C55D")
class Ev_sub_033_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub031_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-817.9), 6.13, (-524.43), 83.43);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub031_001", (-816.74), 6.13, (-523.5), (-119.06));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub031_1", (-815.77), 6.13, (-524.97), (-82.09));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub031_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub031_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub031_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-819.52), 7.45, (-522.88)]), lua.Table.create([(-5.1), (-61.66), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        cppbindings.C5090F7B8.f92941AC0("flag_Ev_sub_031-033_Migawari", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_033_001_talk_01", "sub_033", "npc_sub031_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_033_001_talk_03", "sub_033", "npc_sub031_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub031_001", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub031_1", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_033_001_talk_05", "sub_033", "npc_sub031_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Pos("npc_sub031_001", lua.Table.create([(-819.87), 6.49, (-518.99)]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Pos("npc_pokemon_sub031_1", lua.Table.create([(-819.87), 6.49, (-518.99)]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Pos("Player", lua.Table.create([(-819.87), 6.49, (-518.99)]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([(-819.87), 6.49, (-518.99)]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub031_001", lua.Table.create([(-819.87), 6.49, (-518.99)]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_pokemon_sub031_1", lua.Table.create([(-819.87), 6.49, (-518.99)]));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-820.15), 6.49, (-520.44)]), lua.Table.create([(-2.95), (-159.65), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_033_001_talk_06", "sub_033", "npc_sub031_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0033");
    }
}
