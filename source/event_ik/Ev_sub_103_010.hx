package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CAADCFE1007D48A23")
@:expose("CAADCFE1007D48A23")
class Ev_sub_103_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub103_001", "npc_sub103_003", "npc_pokemon_sub103_001", "npc_pokemon_sub103_002"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub103_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub103_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub103_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_010_talk_01", "sub_103", "npc_sub103_001");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_103_010_select_01", "msg_Ev_sub_103_010_select_02"]), 0, true, false);
        if (((0 == (selection : Dynamic))))
        {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -848.41, 0.01, -820.07, -66.42);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub103_1", -850.07, 0.0, -820.51, 78.24);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub103_001", -849.86, 0.01, -819.61, 111.36);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-847.02, 1.48, -822.18]), lua.Table.create([-10.38, 139.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.8, lua.Table.create([-847.39, 1.38, -821.74]), lua.Table.create([-10.38, 139.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_010_talk_03", "sub_103", "npc_sub103_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-848.89, 0.7, -820.85]), lua.Table.create([-19.84, 107.45, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub103_1", 17));
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-847.39, 1.38, -821.74]), lua.Table.create([-10.38, 139.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub103_001", "normal");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_010_talk_04", "sub_103", "npc_sub103_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub103_2", -852.92, 0.0, -822.09, 54.48);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub103_003", -851.29, 0.0, -822.83, 37.39);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-849.26, 1.49, -820.16]), lua.Table.create([-1.95, 133.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub103_001", "rejoice_big_mc");
            main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub103_1", -850.03, 0.0, -820.55, 81.66);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub103_001", -849.88, 0.01, -819.57, 90.36);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -848.46, 0.01, -820.01, -84.92);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-847.91, 1.42, -818.76]), lua.Table.create([-13.75, 47.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-847.25, 1.64, -818.15]), lua.Table.create([-13.75, 47.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub103_003", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub103_001", "npc_sub103_003", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_sub103_1");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_pokemon_sub103_1", -136.84);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -128.92);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_sub103_001", -136.84);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-849.89, 1.05, -822.45]), lua.Table.create([7.01, 89.4, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_103_010_talk_05", "sub_103", "npc_sub103_003");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var cameraVector:Dynamic = lua.Table.create([-846.23, 1.07, -819.96]);
            var cameraVector2:Dynamic = lua.Table.create([-2.13, 76.53, 0.0]);
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector, cameraVector2, 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            var fadeOutType:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
            fadeOutType(7);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_010_talk_02", "sub_103", "npc_sub103_001");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        untyped this.m_resultParam = (selection : Dynamic);
    }
}
