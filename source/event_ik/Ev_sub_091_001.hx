package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C3C93EFA1716C5D59")
@:expose("C3C93EFA1716C5D59")
class Ev_sub_091_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub091_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -325.1, 0.85, -629.53, 32.94);
        var dynamicNpcName:Dynamic = ("dyn_" + "npc_co_member_m_02");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(dynamicNpcName, lua.Table.create([-326.98, 0.89, -625.36]), 160.74, "npc_co_member_m_02");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(dynamicNpcName, false);
        var effectKey:Dynamic = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-324.47, 4.45, -631.5]), lua.Table.create([-49.08, 176.25, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-324.5, 4.02, -631.13]), lua.Table.create([-49.08, 176.25, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 28);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(dynamicNpcName, true);
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-326.99, 1.91, -627.2]), lua.Table.create([12.55, -178.4, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([-326.96, 2.12, -626.25]), lua.Table.create([12.55, -178.4, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(dynamicNpcName, "anger", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_091_001_talk_01", "sub_091");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(dynamicNpcName, -326.26, 0.89, -627.21, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", dynamicNpcName, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-325.64, 2.31, -630.73]), lua.Table.create([-7.79, -171.73, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(dynamicNpcName, "serious", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_091_001_talk_02", "sub_091", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(dynamicNpcName, "anger_mc", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_091_001_talk_03", "sub_091", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-325.92, 2.08, -628.17]), lua.Table.create([13.27, 161.07, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(dynamicNpcName, 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_091_001_talk_05", "sub_091", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(dynamicNpcName, "serious", dynamicNpcName);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-327.62, 4.46, -630.1]), lua.Table.create([-45.65, -126.01, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-327.31, 4.06, -629.87]), lua.Table.create([-45.65, -126.01, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0091");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        cppbindings.C5090F7B8.f86540D39("SYS_WORK_QUEST_91", 10);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
