package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C64D50A4DCD689257")
@:expose("C64D50A4DCD689257")
class Ev_sub_099_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_pokemon_sub099_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub099_1", -402.01, 1.49, -761.23, 110.44);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -398.71, 1.51, -762.46, -69.56);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub099_1", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-397.83, 3.03, -763.81]), lua.Table.create([-10.63, 133.35, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("npc_pokemon_sub099_1", 11);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_099_010_talk_01", "sub_099");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub099_1", -402.26, 8.92, -760.44, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(3.5);
    }
}
