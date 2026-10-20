package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C747720DD808A8E75")
@:expose("C747720DD808A8E75")
class Ev_sub_117_015 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = [];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        if (true == cppbindings.C5090F7B8.fB628218B())
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_A05_z02_01_0015", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_A05_z02_01_0024", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_A05_z02_01_ju_m_0010", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_ju_boss", false);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_A05_z02_01_0026", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_A05_z02_01_0025", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_A05_z02_01_0027", false);
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -688.78, 6.13, -505.4, 163.39);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ju_leader", lua.Table.create([-688.11, 6.14, -507.56]), -14.93, "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("SYANDERA", lua.Table.create([-689.52, 6.59, -508.86]), 12.11, 609, 0, 0);
        var npcTall01M03Id:Dynamic = untyped lua.abi.Host.concat(Std.string("dun_"), Std.string("npc_tall01_m_03"));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(npcTall01M03Id, lua.Table.create([-691.81, 6.14, -504.41]), 133.15, "npc_tall01_m_03");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-688.11, 8.1, -504.11]), lua.Table.create([-9.76, 12.9, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-688.11, 7.65, -504.11]), lua.Table.create([-9.76, 12.9, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_015_talk_01", "sub_117", "dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-688.3, 7.65, -503.75]), lua.Table.create([-9.76, 12.9, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        var pendingAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(npcTall01M03Id, -689.92, 6.14, -506.09, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_leader", npcTall01M03Id, "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pendingAction);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", npcTall01M03Id, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_015_talk_02", "sub_117", "dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-687.87, 7.81, -503.84]), lua.Table.create([-12.61, 25.02, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.CreateRotomPhoneLooseWait("dyn_main_ju_leader", "ob0004_00_normal_05");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_ju_leader", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_015_talk_03", "sub_117", "dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_015_talk_04", "sub_117", "dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-687.93, 7.56, -506.13]), lua.Table.create([-9.95, 20.66, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_015_talk_05", "sub_117", "dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("SYANDERA", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_015_talk_06", "sub_117", "dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_015_talk_07", "sub_117", "dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_015_talk_08", "sub_117", "dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-689.07, 7.81, -506.37]), lua.Table.create([-1.6, 108.37, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcTall01M03Id, "sad2");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_015_talk_09", "sub_117", npcTall01M03Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-687.93, 7.56, -506.13]), lua.Table.create([-9.95, 20.66, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcTall01M03Id, "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_leader", "SYANDERA", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_015_talk_10", "sub_117", "dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("SYANDERA", 16);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_015_talk_11");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.WaitCreateRotomPhone("dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_015_talk_12", "sub_117", "dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.LookAtRotomPhoneOther("SYANDERA", "dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("SYANDERA", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_015_talk_13");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("SYANDERA");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-687.87, 7.81, -503.84]), lua.Table.create([-12.61, 25.02, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_leader", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_015_talk_14", "sub_117", "dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_015_talk_15", "sub_117", npcTall01M03Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_leader", 18));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_015_talk_16", "sub_117", "dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
