package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C8E692D0A7269CE72")
@:expose("C8E692D0A7269CE72")
class Ev_sub_061_320 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub061_004", "npc_pokemon_sub061_4"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var firstComplete:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_061_020");
        var secondComplete:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_061_120");
        var thirdComplete:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_061_220");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 13.52, -0.98, -24.4, -180.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub061_004", 13.52, -1.0, -26.56, 0.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub061_4", 12.58, -1.0, -27.39, 19.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub061_004", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub061_4", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub061_004", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_004", 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.55, 0.78, -23.33]), lua.Table.create([-5.27, 32.02, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var openingEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([14.55, 0.33, -23.33]), lua.Table.create([-5.27, 32.02, -0.0]), 40.0, 0, openingEase);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_004", 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_004", "sad2");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_320_talk_01", "sub_061", "npc_sub061_004");
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (firstComplete == true && secondComplete == true && thirdComplete == true)
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_004", 22);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_004", "serious");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.03, 0.44, -24.37]), lua.Table.create([-6.04, 32.79, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([14.6, 0.44, -24.75]), lua.Table.create([-6.04, 32.79, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.6, 0.44, -24.75]), lua.Table.create([-6.04, 32.79, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.25, lua.Table.create([13.95, 0.45, -25.77]), lua.Table.create([-6.04, 32.8, -0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub061_004", 32, null, 3.85);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_004", "anger_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_320_talk_04", "sub_061", "npc_sub061_004");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            var cameraEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.89, 0.47, -25.8]), lua.Table.create([-0.23, 27.27, 0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_004", 175);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_004", "normal");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_320_talk_02", "sub_061", "npc_sub061_004");
            var remainingCount:Dynamic = untyped (3 - main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_sub061_COUNT"));
            if (remainingCount <= 0)
            {
                remainingCount = 0;
            };
            main.event.ik.command.IkScriptCommand.WordSet_Number(2, remainingCount);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub061_004", 174);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub061_004", "anger_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_320_talk_03", "sub_061", "npc_sub061_004");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
