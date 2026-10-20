package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C9ED50B0A7B7574E4")
@:expose("C9ED50B0A7B7574E4")
class Ev_sub_061_120 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub061_002", "npc_pokemon_sub061_2"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var firstComplete:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_061_020");
        var secondComplete:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_061_220");
        var thirdComplete:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_061_320");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 13.52, -0.98, -24.4, -180.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub061_002", 13.52, -1.0, -26.56, 0.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub061_2", 14.38, -1.0, -26.97, -14.54);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub061_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub061_2", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub061_002", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_002", 2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_002", "sad");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.78, 1.37, -23.05]), lua.Table.create([-15.59, 25.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var openingEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([14.78, 0.67, -23.05]), lua.Table.create([-15.59, 25.95, 0.0]), 40.0, 0, openingEase);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub061_002", 33, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_120_talk_01", "sub_061", "npc_sub061_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        if (firstComplete == true && secondComplete == true && thirdComplete == true)
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.9, -0.27, -24.97]), lua.Table.create([3.01, 29.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([14.28, -0.27, -25.19]), lua.Table.create([3.01, 29.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub061_002");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_002", 174);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_002", 174);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.28, -0.27, -25.19]), lua.Table.create([3.01, 29.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.25, lua.Table.create([13.85, -0.06, -25.95]), lua.Table.create([3.01, 29.24, 0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_002", 175);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_002", "smile");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_120_talk_04", "sub_061", "npc_sub061_002");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            var cameraEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.89, -0.0, -25.82]), lua.Table.create([0.0, 27.27, 0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub061_002");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_002", 175);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_120_talk_02", "sub_061", "npc_sub061_002");
            var remainingCount:Dynamic = untyped (3 - main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_sub061_COUNT"));
            if (remainingCount <= 0)
            {
                remainingCount = 0;
            };
            main.event.ik.command.IkScriptCommand.WordSet_Number(2, remainingCount);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_002", "anger_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_120_talk_03", "sub_061", "npc_sub061_002");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_002", 1);
    }
}
