package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CF7B6051C36853EEC")
@:expose("CF7B6051C36853EEC")
class Ev_sys_rest1_failure extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_trainer_rankW_rankup"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var failureMode:Dynamic = untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC();
        if ((("0" == failureMode))) { } else {
            if ((("1" == failureMode))) {
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_restaurant_01_talk_15", "restaurant");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                cppbindings.CDDCCFBA7.f1B77253E("player_defeat_cnt", 1);
            } else {
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_restaurant_01_talk_13", "restaurant");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            };
        };
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 13.83, 0.53, -2.2, 93.79));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_trainer_rankW_rankup", "sad");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_trainer_rankW_rankup");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_trainer_rankW_rankup", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_trainer_rankW_rankup", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_trainer_rankW_rankup", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([12.67, 1.93, -1.13]), lua.Table.create([-4.81, -59.92, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_GAME_OVER");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_01_talk_14", "restaurant", "npc_trainer_rankW_rankup");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_trainer_rankW_rankup", "normal");
    }
}
