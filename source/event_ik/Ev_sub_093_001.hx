package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C90DDD584C9D1135F")
@:expose("C90DDD584C9D1135F")
class Ev_sub_093_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub093_001", "npc_pokemon_sub093_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("RUTYABURU", lua.Table.create([(-212.81), 18.91, (-440.82)]), (-153.01), 701, 0, 0, null, null, null, null, 255);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-220.1), 16.61, (-448.7), (-39.69));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub093_001", (-221.53), 16.59, (-447.22), 139.95);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub093_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub093_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-220.16), 17.99, (-450.21)]), lua.Table.create([(-4.27), 167.6, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_093_001_talk_01", "sub_093", "npc_sub093_001");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_093_001_select_01", "msg_Ev_sub_093_001_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-221.31), 18.08, (-447.95)]), lua.Table.create([(-0.19), 164.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub093_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub093_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_093_001_talk_02", "sub_093", "npc_sub093_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub093_001", "sad2");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub093_001", 175);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub093_001", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_093_001_talk_03", "sub_093", "npc_sub093_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-220.16), 17.99, (-450.21)]), lua.Table.create([(-4.27), 167.6, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub093_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_093_001_talk_04", "sub_093", "npc_sub093_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub093_001", "surprise");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "RUTYABURU", "head");
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("RUTYABURU", 7);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_093_001_talk_05", "sub_093", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub093_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "RUTYABURU", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub093_001", "RUTYABURU", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "RUTYABURU");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub093_001", "RUTYABURU");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-213.65), 19.48, (-441.54)]), lua.Table.create([3.28, (-130.19), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([(-214.21), 19.32, (-442.04)]), lua.Table.create([3.28, (-130.19), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-219.83), 16.6, (-447.36), 42.77);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub093_001", (-220.39), 16.59, (-446.62), 61.86);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub093_001", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("RUTYABURU", 17);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-220.43), 18.18, (-447.24)]), lua.Table.create([0.9, (-130.45), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([(-221.25), 17.9, (-447.93)]), lua.Table.create([0.9, (-130.45), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub093_001", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_093_001_talk_06", "sub_093", "npc_sub093_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_093_001_talk_07", "sub_093", "npc_sub093_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("RUTYABURU", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_093_001_talk_08", "sub_093", null, false, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-222.92), 17.35, (-447.94)]), lua.Table.create([2.65, (-109.39), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([(-223.14), 17.35, (-447.32)]), lua.Table.create([2.65, (-109.39), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub093_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub093_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_093_001_talk_09", "sub_093", "npc_sub093_001");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_093_001_select_03", "msg_Ev_sub_093_001_select_04"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-219.82), 18.06, (-447.31)]), lua.Table.create([0.0, 142.45, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub093_001", 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub093_001", "smile");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_093_001_talk_10", "sub_093");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub093_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub093_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_093_001_talk_11", "sub_093", "npc_sub093_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-223.14), 17.35, (-447.32)]), lua.Table.create([2.65, (-109.39), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "RUTYABURU", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub093_001", "RUTYABURU", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0093");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub093_001", (-221.53), 16.59, (-447.22), 153.69);
    }
}
