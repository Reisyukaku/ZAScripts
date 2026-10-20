package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CAB099F85812EF7B1")
@:expose("CAB099F85812EF7B1")
class Ev_sub_009_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub009_001", "npc_pokemon_sub_009_001_01"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -434.15, 0.01, -311.05, -147.85);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub009_001", -435.23, 0.14, -312.22, 39.67);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub_009_001_01", -434.4, 0.14, -312.53, 3.77);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub009_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub009_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub_009_001_01", "Player", "head");
        var cameraVector:Dynamic = lua.Table.create([-432.64, 1.37, -310.66]);
        var cameraVector2:Dynamic = lua.Table.create([-4.87, 63.44, 0.0]);
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector, cameraVector2, 40.0, 0, cameraEase);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_GAME_OVER");
        var eventParameters:Dynamic = this.m_eventScriptParam;
        var getEventMode:Dynamic = untyped eventParameters.f73EE8FEC;
        var getEventModeResult:Dynamic = getEventMode(eventParameters);
        if ((("1" == getEventModeResult)))
        {
            main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub009_001");
            var cameraVector3:Dynamic = lua.Table.create([-434.42, 1.5, -311.72]);
            var cameraVector4:Dynamic = lua.Table.create([6.67, 57.69, 0.0]);
            var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector3, cameraVector4, 40.0, 0, cameraEase2);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        };
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var eventParameters3:Dynamic = this.m_eventScriptParam;
        var getEventMode2:Dynamic = untyped eventParameters3.f73EE8FEC;
        var getEventMode2Result:Dynamic = getEventMode2(eventParameters3);
        if ((("0" == getEventMode2Result)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub009_001", 22);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_009_020_talk_01", "sub_009", "npc_sub009_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        }
        else
        {
            if ((("1" == getEventMode2Result)))
            {
            };
        };
        var eventParameters4:Dynamic = this.m_eventScriptParam;
        var getEventMode3:Dynamic = untyped eventParameters4.f73EE8FEC;
        var getEventMode3Result:Dynamic = getEventMode3(eventParameters4);
        if ((("0" == getEventMode3Result)))
        {
            var cameraVector5:Dynamic = lua.Table.create([-434.42, 1.5, -311.72]);
            var cameraVector6:Dynamic = lua.Table.create([6.67, 57.69, 0.0]);
            var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector5, cameraVector6, 40.0, 0, cameraEase3);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            var fObjCloseEye:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_CloseEye;
            fObjCloseEye("npc_sub009_001");
        };
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub_009_001_01", "npc_sub009_001", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-434.19, 1.43, -311.57]), lua.Table.create([6.67, 57.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub009_001", 174);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub009_001", "rejoice_big_mc", "npc_sub009_001");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_009_020_talk_02", "sub_009", "npc_sub009_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-435.35, 2.37, -310.93]), lua.Table.create([-39.81, -15.91, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub009_001", "normal", "npc_sub009_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub009_001", "npc_pokemon_sub_009_001_01", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub_009_001_01", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_009_020_talk_03", "sub_009", "npc_sub009_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_009_020_talk_06", "sub_009", "npc_sub009_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub009_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_009_020_talk_07", "sub_009", "npc_sub009_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-435.12, 1.48, -311.52]), lua.Table.create([-27.72, -33.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub_009_001_01", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_009_020_talk_08", "sub_009", "npc_sub009_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-433.51, 0.49, -311.47]), lua.Table.create([23.87, 53.19, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub009_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_009_020_talk_09", "sub_009", "npc_sub009_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub009_001", 32, null, 3.85);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub009_001", "rejoice_big_mc", "npc_sub009_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_009_020_talk_11", "sub_009", "npc_sub009_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub_009_001_01", 17);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0009");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
    }
}
