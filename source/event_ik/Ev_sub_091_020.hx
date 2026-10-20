package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C3C8D82A171673874")
@:expose("C3C8D82A171673874")
class Ev_sub_091_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_A02_z02_04_0015"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        if ((true == cppbindings.C5090F7B8.fB628218B())) {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_A02_z02_04_0015", false);
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -181.55, 0.2, -702.77, -169.37);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("MOGURYUU_01", lua.Table.create([-181.46, 0.16, -705.03]), -2.28, 529, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("EV_SUBNPC", lua.Table.create([-184.95, 0.18, -700.59]), 143.38, "npc_co_member_m_02");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "MOGURYUU_01", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("MOGURYUU_01", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-180.84, 1.92, -702.32]), lua.Table.create([-37.66, 28.12, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-180.66, 2.21, -701.99]), lua.Table.create([-37.66, 28.12, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MOGURYUU_01", 25);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_091_020_talk_01", "sub_091");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("EV_SUBNPC", "Player", "head");
        var npcMovement:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("EV_SUBNPC", -182.54, 0.18, -702.86, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-179.89, 0.36, -706.33]), lua.Table.create([6.61, 142.88, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "EV_SUBNPC", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("MOGURYUU_01", "EV_SUBNPC", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_091_020_talk_02", "sub_091", "EV_SUBNPC");
        main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_091_020_select_01", "msg_Ev_sub_091_020_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "MOGURYUU_01", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcMovement);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("EV_SUBNPC", "MOGURYUU_01", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("MOGURYUU_01", "EV_SUBNPC");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-181.19, 0.73, -703.66]), lua.Table.create([-13.75, 11.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MOGURYUU_01", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_091_020_talk_01", "sub_091");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-179.87, 0.48, -705.83]), lua.Table.create([3.4, 137.57, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("EV_SUBNPC", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("EV_SUBNPC", "anger_mc", "EV_SUBNPC");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_091_020_talk_03", "sub_091", "EV_SUBNPC");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("EV_SUBNPC", "normal", "EV_SUBNPC");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("EV_SUBNPC", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "EV_SUBNPC", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_091_020_talk_04", "sub_091", "EV_SUBNPC");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("EV_SUBNPC");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("EV_SUBNPC", -191.39, 0.01, -692.98, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("MOGURYUU_01");
        var pokemonAnimation:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MOGURYUU_01", 25);
        main.event.ik.command.IkScriptCommand.ShowMessage_Auto(2.0, 0, "msg_Ev_sub_091_020_talk_05", "sub_091", "MOGURYUU_01");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pokemonAnimation);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("MOGURYUU_01", -191.39, 0.01, -692.98, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        cppbindings.C5090F7B8.f86540D39("SYS_WORK_QUEST_91", 20);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
    }
}
