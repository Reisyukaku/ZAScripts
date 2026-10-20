package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C64086A73C4737B69")
@:expose("C64086A73C4737B69")
class Ev_m01_0150 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_main_rival_m"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_M6DB_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main01_0004", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main01_0005", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main01_0006", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("main10400_poke_1", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("main10400_poke_2", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("main10400_poke_3", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -708.81, 0.01, -891.46, 141.22);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -709.08, 0.04, -892.1, 118.148);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("HURAETTE", lua.Table.create([-707.82, 1.27, -892.0]), 115.0, 670, 5, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "HURAETTE", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "HURAETTE", "head");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_M01_0150");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-709.03, 1.43, -890.19]), lua.Table.create([-6.82, -17.0, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var turnHandle1:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("HURAETTE", -45.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        ext.gf.audio.SoundCommand.PostEvent3DObject("PLAY_SS_PV_0670_01_EX3", untyped (cast cppbindings.C682D8E4F.fEF94D11D("event_script") : Dynamic).fD4E64AB7("HURAETTE"));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0140_talk_01", "main_01_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle1);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "rejoice_small", "npc_main_rival_m");
        var animationHandle2:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0150_talk_01", "main_01_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle2);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0150_talk_08", "main_01_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-708.17, 1.44, -890.97]), lua.Table.create([-0.4, -19.38, -0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-708.07, 1.44, -891.28]), lua.Table.create([-0.4, -19.38, -0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0150_talk_02", "main_01_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-709.9, 1.9, -889.86]), lua.Table.create([-11.06, -39.3, -0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(5.3, lua.Table.create([-709.9, 1.64, -889.86]), lua.Table.create([-11.06, -39.3, -0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var turnHandle3:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("HURAETTE", 135.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        var turnHandle4:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_rival_m", 19.148);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        var turnHandle5:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -167.777);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle4);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_rival_m");
        var animationHandle6:StdTypes.Null<main.event.ik.command.OneShotAnimeHandle> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_rival_m", 32, null, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0150_talk_03", "main_01_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle5);
        var animationHandle7:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationHandle6);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle7);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_rival_m", 130.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 127.01);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_ZONE_BATTLE_EV_OFF");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T1000");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
