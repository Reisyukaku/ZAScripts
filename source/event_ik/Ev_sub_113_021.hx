package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CCEF6E4EBB53CBE6E")
@:expose("CCEF6E4EBB53CBE6E")
class Ev_sub_113_021 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub113_001", "npc_pokemon_sub113_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_SUB_0113_STOP");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-916.48), 14.53, (-295.08), 30.76);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub113_1", (-915.6), 15.21, (-293.39), (-158.69));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 0);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 20);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_ATHLETIC_GOAL");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_113_100_talk_04", "sub_113", "npc_sub113_001", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub113_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([(-915.45), 15.44, (-293.31)]));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-917.81), 16.13, (-294.88)]), lua.Table.create([(-15.96), (-117.13), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-917.83), 16.13, (-295.45)]), lua.Table.create([(-15.96), (-117.13), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_SUB_0113_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub113_1", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_113_011_talk_03", "sub_113");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_sub113_1");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub113_1", (-916.82), 15.21, (-292.28), 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([(-916.8), 15.44, (-292.53)]));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var effectKey:String = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-900.6), 1.51, (-291.37), 172.33);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub113_001", (-900.39), 1.51, (-292.93), (-7.67));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub113_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub113_001", "Player", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub113_001", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-899.77), 4.15, (-290.42)]), lua.Table.create([(-1.39), 26.64, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-899.77), 2.85, (-290.42)]), lua.Table.create([(-1.39), 26.64, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub113_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_113_021_talk_01", "sub_113", "npc_sub113_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub113_001", "unique2");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_S");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-899.81), 3.12, (-291.64)]), lua.Table.create([3.2, 25.31, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.1, lua.Table.create([(-900.08), 3.16, (-292.21)]), lua.Table.create([3.2, 25.31, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub113_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_113_021_talk_02", "sub_113");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub113_001", "anger_mc");
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-899.25), 2.87, (-289.87)]), lua.Table.create([(-4.43), 30.99, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_113_021_talk_04", "sub_113", "npc_sub113_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub113_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_113_021_talk_05", "sub_113", "npc_sub113_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-895.35), 2.84, (-288.69)]), lua.Table.create([(-4.14), 55.87, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub113_001");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub113_001", (-914.28), 0.0, (-282.7), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", (-112.88));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
