package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C0950FF1904CAA883")
@:expose("C0950FF1904CAA883")
class Ev_sub_054_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub054_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -402.79, 1.5, -763.45, 0.18);
        var dynamicNpcName:String = lua.abi.Host.concat(Std.string("dyn_"), Std.string("npc_co_member_m_01"));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(dynamicNpcName, lua.Table.create([-402.77, 1.49, -761.21]), -178.0, "npc_co_member_m_01");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(dynamicNpcName, 201);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(dynamicNpcName, "unique");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", dynamicNpcName, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(dynamicNpcName, "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-402.9, 2.2, -764.94]), lua.Table.create([0.0, -178.0, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(14, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-402.82, 2.8, -762.7]), lua.Table.create([0.0, -178.0, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(14, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_054_020_talk_01", "sub_054");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(dynamicNpcName, "dislike");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_054_020_talk_02", "sub_054");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(dynamicNpcName, "normal");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(dynamicNpcName);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-404.2, 2.88, -765.94]), lua.Table.create([-7.34, -165.65, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(14, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(dynamicNpcName);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(dynamicNpcName);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(dynamicNpcName, -404.26, 1.49, -761.25, 0.5));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(dynamicNpcName, "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(dynamicNpcName, "Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(dynamicNpcName, 201);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(dynamicNpcName, "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_054_020_talk_03", "sub_054", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0054");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(dynamicNpcName, "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_054_020_talk_04", "sub_054", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
