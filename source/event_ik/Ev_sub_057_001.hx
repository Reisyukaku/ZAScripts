package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CE3945C4219C916A7")
@:expose("CE3945C4219C916A7")
class Ev_sub_057_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_sub057_001", "npc_pokemon_sub057_1", "npc_pokemon_sub057_2"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-749.77), 1.35, (-170.57)]), lua.Table.create([(-5.21), 14.38, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-747.35), 0.16, (-160.93), (-164.46));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub057_001", (-746.46), 0.16, (-162.24), (-159.87));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub057_1", 17);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub057_2", 17);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-746.57), 1.59, (-159.66)]), lua.Table.create([(-5.21), 14.37, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_057_001_talk_01", "sub_057", "npc_sub057_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub057_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub057_001", "Player", "head");
        var turnHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub057_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_sub057_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub057_1", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_057_001_talk_02", "sub_057", "npc_sub057_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub057_001", "surprise");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub057_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_057_001_talk_03", "sub_057");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub057_2", 17);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub057_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0057");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
