package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CB9591380BD2A0030")
@:expose("CB9591380BD2A0030")
class Ev_sub_046_011 extends BaseSubQuest
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
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TAXI_END_AFTER_SUB_010");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_adult02_a_f_00", lua.Table.create([(-47.53), 0.01, (-340.85)]), (-68.28), "npc_adult02_a_f_00");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-48.06), 0.01, (-341.92), (-62.57));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-45.02), 1.96, (-342.97)]), lua.Table.create([7.05, 120.34, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.3, lua.Table.create([(-45.02), 0.86, (-342.97)]), lua.Table.create([7.05, 120.34, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FIELD_VOL_OFF");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_adult02_a_f_00", "sad");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_adult02_a_f_00", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_020_talk_01", "sub_046", "dyn_npc_adult02_a_f_00");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_adult02_a_f_00", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_adult02_a_f_00", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_020_talk_02", "sub_046", "dyn_npc_adult02_a_f_00");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_npc_adult02_a_f_00", "Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "dyn_npc_adult02_a_f_00");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_npc_adult02_a_f_00");
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("dyn_npc_adult02_a_f_00", 6);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_adult02_a_f_00", "anger_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_adult02_a_f_00", 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_npc_adult02_a_f_00", 33, null, 4.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_020_talk_03", "sub_046", "dyn_npc_adult02_a_f_00");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T3000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-50.3), 0.02, (-340.46), 47.16);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
