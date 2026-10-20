package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CA7F91E0A80C5D213")
@:expose("CA7F91E0A80C5D213")
class Ev_sub_061_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub061_001", "npc_pokemon_sub061_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var firstComplete:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_061_120");
        var secondComplete:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_061_220");
        var thirdComplete:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_061_320");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 13.52, -0.98, -24.4, -180.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub061_1", 12.6, -1.0, -26.06, 32.82);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub061_001", 13.52, -1.0, -26.56, 0.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub061_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub061_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub061_001", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_001", "serious");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.75, 0.84, -23.72]), lua.Table.create([-3.14, 40.96, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.89, 1.02, -23.62]), lua.Table.create([-7.82, 42.54, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var openingEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([14.89, 0.42, -23.62]), lua.Table.create([-7.82, 42.54, -0.0]), 40.0, 0, openingEase);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub061_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_020_talk_01", "sub_061", "npc_sub061_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        if (((((((true == firstComplete)) && ((true == secondComplete)))) && ((true == thirdComplete)))))
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.43, 0.16, -24.74]), lua.Table.create([2.05, 27.26, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([14.29, 0.18, -25.03]), lua.Table.create([2.05, 27.26, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.29, 0.18, -25.03]), lua.Table.create([2.05, 27.26, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.25, lua.Table.create([13.87, 0.4, -25.85]), lua.Table.create([2.05, 27.26, -0.0]), 40.0, 0, cameraEase);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_001", "serious");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_001", 175);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_020_talk_04", "sub_061", "npc_sub061_001");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            var cameraEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.89, 0.47, -25.8]), lua.Table.create([-0.23, 27.27, 0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_001", 175);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_020_talk_02", "sub_061", "npc_sub061_001");
            var remainingCount:Dynamic = untyped (3 - main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_sub061_COUNT"));
            if (((remainingCount <= 0)))
            {
                remainingCount = 0;
            };
            main.event.ik.command.IkScriptCommand.WordSet_Number(2, remainingCount);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_001", "anger_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_020_talk_03", "sub_061", "npc_sub061_001");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
