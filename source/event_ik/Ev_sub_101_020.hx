package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CEA6749F2C3980FF2")
@:expose("CEA6749F2C3980FF2")
class Ev_sub_101_020 extends BaseSubQuest
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
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T0");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("EAAMUDO", lua.Table.create([(-780.18), 19.49, (-782.44)]), 114.5, 227, 0, 0);
        var dynamicNpcName:String = lua.abi.Host.concat(Std.string("dyn_"), Std.string("npc_waiter_m_02"));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(dynamicNpcName, lua.Table.create([(-777.7), 19.51, (-783.57)]), (-65.51), "npc_waiter_m_02");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-778.24), 19.51, (-784.46), (-43.71));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-777.54), 22.0, (-788.21)]), lua.Table.create([(-11.17), 166.41, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-777.54), 20.99, (-788.21)]), lua.Table.create([(-11.17), 166.41, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "EAAMUDO", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(dynamicNpcName, "EAAMUDO", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("EAAMUDO", dynamicNpcName, "head");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_101_020_talk_01", "sub_101", "npc_sub101_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-779.01), 20.1, (-784.84)]), lua.Table.create([4.97, 156.53, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("EAAMUDO", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_101_020_talk_02", "sub_101", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-782.63), 19.91, (-783.31)]), lua.Table.create([4.74, (-99.35), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_101_020_talk_05", "sub_101", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", dynamicNpcName, "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(dynamicNpcName, "serious");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-778.77), 20.92, (-783.85)]), lua.Table.create([(-0.3), (-104.69), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([(-778.58), 20.94, (-783.78)]), lua.Table.create([(-0.3), (-104.69), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_101_020_talk_06", "sub_101", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_101_020_talk_07", "sub_101", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("EAAMUDO", 16);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-782.63), 19.91, (-783.31)]), lua.Table.create([4.74, (-99.35), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_101_020_talk_08", "sub_101");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(dynamicNpcName, 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_101_020_talk_09", "sub_101", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-779.01), 20.1, (-784.84)]), lua.Table.create([4.97, 156.53, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("EAAMUDO", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_101_020_talk_10", "sub_101");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(dynamicNpcName, "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", dynamicNpcName, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("EAAMUDO", (-778.17), 19.49, (-780.76), (-140.99));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(dynamicNpcName, (-779.25), 19.49, (-781.31), 170.06);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-778.77), 19.53, (-784.0), (-9.98));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-779.66), 21.0, (-785.19)]), lua.Table.create([(-9.92), (-159.44), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(dynamicNpcName, "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_101_020_talk_11", "sub_101", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(dynamicNpcName, "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_101_020_talk_12", "sub_101", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("EAAMUDO", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("EAAMUDO", 16);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_101_020_talk_19", "sub_101");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(dynamicNpcName, "EAAMUDO", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_101_020_talk_13", "sub_101", dynamicNpcName);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_101_020_select_03", "msg_Ev_sub_101_020_select_04"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-779.55), 21.16, (-782.45)]), lua.Table.create([(-16.8), (-152.09), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_101_020_talk_16", "sub_101", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0101");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
