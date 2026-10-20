package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C203ACDFA28315C94")
@:expose("C203ACDFA28315C94")
class Ev_sub_115_050 extends BaseSubQuest
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
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -747.25, 0.16, -246.94, 115.84);
        var actorId:Dynamic = untyped lua.abi.Host.concat(Std.string("dyn_"), Std.string("npc_collector_m_00"));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(actorId, lua.Table.create([-741.46, 0.16, -248.81]), -73.66, "npc_collector_m_00");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("EMONGA", lua.Table.create([-746.57, 0.16, -248.86]), 38.89, 587, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("EMONGA", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub115_1", false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", actorId, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId, "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-753.0, 5.33, -239.68]), lua.Table.create([-23.38, -41.01, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(actorId, -745.47, 0.16, -247.66, 0.5);
        var cameraVector:Dynamic = lua.Table.create([-23.38, -41.01, 0.0]);
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.5, lua.Table.create([-751.97, 4.65, -240.87]), cameraVector, 40.0, 0, cameraEase);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var eventParameters:Dynamic = this.m_eventScriptParam;
        var eventMode:Dynamic = eventParameters.f73EE8FEC();
        if ((("0" == eventMode)))
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-746.11, 1.74, -246.85]), lua.Table.create([-9.93, -36.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_115_050_talk_01", "sub_115", actorId);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-747.93, 1.62, -245.51]), lua.Table.create([-9.93, -36.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_115_050_talk_03", "sub_115", actorId);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "normal");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_115_050_talk_06", "sub_115", actorId);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Fade_Out("White");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("EMONGA", true);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "EMONGA", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId, "EMONGA", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("EMONGA", actorId, "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -747.25, 0.16, -246.94, 151.34);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(actorId, -745.47, 0.16, -247.66, -132.16);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-746.89, 2.23, -244.65]), lua.Table.create([-24.15, -4.09, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_POKE_APPERANCE");
            main.event.ik.command.IkScriptCommand.Fade_In("White");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("EMONGA", 20);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_115_050_talk_07", "sub_115");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-747.5, 0.19, -249.06]), lua.Table.create([17.91, -111.51, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 18));
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-745.96, 0.75, -248.17]), lua.Table.create([-24.66, 41.74, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_115_050_talk_08", "sub_115", actorId);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-746.76, 0.4, -249.91]), lua.Table.create([8.55, -170.37, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraMoveAngle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector2:Dynamic = lua.Table.create([-746.85, 0.36, -250.47]);
            var cameraVector3:Dynamic = lua.Table.create([8.54, -170.37, 0.02]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            cameraMoveAngle(4.0, cameraVector2, cameraVector3, 40.0, 0, cameraEase2, null, null, null, null);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "normal");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_115_050_talk_10", "sub_115", actorId);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-747.93, 1.62, -245.51]), lua.Table.create([-9.93, -36.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_115_050_talk_01", "sub_115", actorId);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_115_050_talk_03", "sub_115", actorId);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-746.18, 1.85, -246.51]), lua.Table.create([-16.08, -26.83, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.5, lua.Table.create([-746.05, 1.77, -246.75]), lua.Table.create([-16.08, -26.83, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "normal");
            var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 28);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_115_050_talk_04", "sub_115", actorId);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-748.85, 1.89, -244.28]), lua.Table.create([-9.93, -36.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.5, lua.Table.create([-749.25, 2.01, -243.74]), lua.Table.create([-9.93, -36.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            var waitFObjAction:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            var resetAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(actorId);
            waitFObjAction(resetAnimationAction, null, null, null, null, null, null, null, null);
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(actorId);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_115_050_talk_05", "sub_115", actorId);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
        };
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0115");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
