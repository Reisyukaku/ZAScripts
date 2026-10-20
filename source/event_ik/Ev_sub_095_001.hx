package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C5DB6D7579A1ED6ED")
@:expose("C5DB6D7579A1ED6ED")
class Ev_sub_095_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub095_001", "npc_pokemon_sub095_1", "npc_pokemon_sub095_2", "npc_pokemon_sub095_3", "npc_pokemon_sub095_4", "npc_pokemon_sub095_5"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-159.38, -4.03, -382.54]), lua.Table.create([-15.76, -81.92, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -162.06, -5.19, -382.32, 63.17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_sub095_001", -132.71);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub095_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub095_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_095_001_talk_01", "sub_095", "npc_sub095_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-163.78, -3.6, -381.48]), lua.Table.create([-11.33, -77.65, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub095_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub095_001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_095_001_talk_02", "sub_095", "npc_sub095_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB_095_001_0688_00_INDEX");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_1", 17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_3", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_2", 17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_5", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub095_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_095_001_talk_03", "sub_095", "npc_sub095_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub095_001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_095_001_talk_04", "sub_095", "npc_sub095_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0095");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T3000");
    }
}
