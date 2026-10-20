package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C3DD730C8490BE3EE")
@:expose("C3DD730C8490BE3EE")
class Ev_m03_2300 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["dyn_main_friend_f", "main_hitodeman"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_friend_f", false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_f", lua.Table.create([-610.56, 0.15, -778.02]), 64.03, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-605.85, 1.53, -777.57]), lua.Table.create([-7.0, 98.41, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -608.43, 0.16, -776.58, -106.13);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_f", -610.56, 0.15, -778.02, 64.03);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_hitodeman", -610.98, 0.15, -776.25, 86.03);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "battle", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 491);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2300_talk_01", "main_03_01", "dyn_main_friend_f");
        var choices = (["msg_Ev_m03_2300_select_01", "msg_Ev_m03_2300_select_02"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(choices, 0, true, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection)))
        {
            var playerAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation);
            var cameraPosition = lua.Table.create([-607.73, 2.07, -778.46]);
            var cameraAngle = lua.Table.create([-17.32, 111.31, 0.0]);
            var cameraEase = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, cameraPosition, cameraAngle, 30.0, 0, cameraEase, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("main_hitodeman", 37);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "serious", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2300_talk_03", "main_03_01", "dyn_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        }
        else
        {
            var playerAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            var friendAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 1);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(friendAnimation);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "rejoice_small", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 19);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2300_talk_02", "main_03_01", "dyn_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        };
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_friend_f", true);
        untyped this.m_resultParam = selection;
    }
}
