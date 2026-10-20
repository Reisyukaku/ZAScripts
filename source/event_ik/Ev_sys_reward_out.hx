package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C5CAB47A1DB80C5AC")
@:expose("C5CAB47A1DB80C5AC")
class Ev_sys_reward_out extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_t1_i003_003"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var battleCount:Dynamic = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_M10_RewardBattle_Count");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -3.07, 0.61, 7.27, 3.33);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_t1_i003_003", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_t1_i003_003", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-3.83, 1.99, 6.3]), lua.Table.create([-3.15, -155.34, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)), null, null, null);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_GAME_OVER");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var resultMode:Dynamic = untyped m_eventScriptParam.f73EE8FEC();
        if (resultMode == "0")
        {
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_t1_i003_003", "rejoice_small");
            if (battleCount <= 0)
            {
                battleCount = 0;
            }
            main.event.ik.command.IkScriptCommand.WordSet_Number(2, battleCount);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reward_05", "reward", "npc_main_t1_i003_003");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reward_08", "reward", "npc_main_t1_i003_003");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_t1_i003_003", 74);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_t1_i003_003", "normal");
            var index = 0;
            var rewardCount:Dynamic = cppbindings.C56DE81E7.f470EECED();
            while (index < rewardCount)
            {
                lua.abi.Host.setGlobal("_hx_do_first_1", false);
                var reward:Dynamic = cppbindings.C56DE81E7.f32353140(index++);
                var itemId:Dynamic = untyped reward.f0562A11A();
                main.event.ik.command.IkScriptCommand.StartItemGetSequence(itemId, untyped reward.f5A484C47());
            }
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_t1_i003_003", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reward_06", "reward", "npc_main_t1_i003_003");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            if (battleCount == 1)
            {
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
                main.event.ik.command.IkScriptCommand.Wait_Fade();
            }
        }
        var nextMode:Dynamic = untyped m_eventScriptParam.f73EE8FEC();
        if (nextMode == "1")
        {
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_t1_i003_003", "sad");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_t1_i003_003", 175);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reward_04", "reward", "npc_main_t1_i003_003");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_t1_i003_003", "normal");
    }
}
