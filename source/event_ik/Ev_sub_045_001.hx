package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CD3939B8C8E488DF0")
@:expose("CD3939B8C8E488DF0")
class Ev_sub_045_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub045_001", "npc_pokemon_sub045_1", "npc_pokemon_sub045_2", "npc_pokemon_sub045_3"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-511.58), 0.16, (-982.94), (-163.04));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub045_001", (-512.13), 0.15, (-984.04), (-62.47));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub045_1", (-513.94), 0.15, (-983.65), 36.24);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub045_2", (-513.53), 0.15, (-982.65), (-17.61));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub045_3", (-514.11), 0.15, (-981.58), 136.92);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub045_1");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub045_2");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub045_3");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub045_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub045_001", "npc_pokemon_sub045_2", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-509.85), 2.11, (-981.06)]), lua.Table.create([(-18.96), 63.22, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([(-509.48), 2.11, (-981.79)]), lua.Table.create([(-18.96), 63.22, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub045_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub045_001", "Player");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub045_001", 32, null, 5.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_045_001_talk_01", "sub_045", "npc_sub045_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub045_001", "npc_pokemon_sub045_2", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub045_2", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-511.81), 1.39, (-981.72)]), lua.Table.create([(-24.62), 62.83, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([(-511.98), 1.39, (-981.38)]), lua.Table.create([(-24.62), 62.83, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_045_001_talk_02", "sub_045", "npc_sub045_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_045_001_talk_03", "sub_045", "npc_sub045_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-509.48), 2.11, (-981.79)]), lua.Table.create([(-18.96), 63.22, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub045_001", "smile_bitter");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_045_001_talk_04", "sub_045", "npc_sub045_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub045_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub045_001", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub045_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_045_001_talk_05", "sub_045", "npc_sub045_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub045_001", 20);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-511.57), 1.61, (-983.36)]), lua.Table.create([(-0.67), 41.07, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_045_001_talk_06", "sub_045", "npc_sub045_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_045_001_talk_07", "sub_045", "npc_sub045_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub045_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub045_001", 2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-509.48), 2.11, (-981.79)]), lua.Table.create([(-18.96), 63.22, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub045_001", 33, null, 4.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_045_001_talk_08", "sub_045", "npc_sub045_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0045");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub045_001", (-511.68), 0.15, (-984.08), (-3.69));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub045_001", 1);
    }
}
