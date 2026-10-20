package event_ik;

import main.event.ik.command.IkScriptCommand;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC2CE9CD8F121E7A7")
@:expose("CC2CE9CD8F121E7A7")
class Ev_sys_reward_in extends BaseMainScenario
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
        IkScriptCommand.FObj_Set_Animation("Player", 1);
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_main_t1_i003_003");
        IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_t1_i003_003", "head");
        IkScriptCommand.FObj_LookAt_Obj("npc_main_t1_i003_003", "Player", "head");
        if (cppbindings.C56DE81E7.f74F6877C() == false)
        {
            IkScriptCommand.FObj_Set_Animation("npc_main_t1_i003_003", 175);
            IkScriptCommand.ShowMessage(0, "msg_reward_01", "reward", "npc_main_t1_i003_003");
            IkScriptCommand.HideMessageWindow();
        }
        else
        {
            IkScriptCommand.FObj_Set_Animation("npc_main_t1_i003_003", 174);
            IkScriptCommand.ShowMessage(0, "msg_reward_02", "reward", "npc_main_t1_i003_003");
            var selection:Dynamic = IkScriptCommand.ShowContextMenu(["msg_reward_select_01", "msg_reward_select_02"], 0, true, false);
            if (selection == 0)
            {
                IkScriptCommand.ShowMessage(0, "msg_reward_07", "reward", "npc_main_t1_i003_003");
                IkScriptCommand.HideMessageWindow();
                var stage = 0;
                var battles:Float = IkScriptCommand.GetWorkValue("SYS_WORK_M10_RewardBattle_Count");
                if (battles >= 20)
                {
                    stage = 1;
                    if (IkScriptCommand.GetWorkValue("SYS_WORK_QUEST_103") == 255)
                    {
                        if (IkScriptCommand.GetWorkValue("SYS_WORK_QUEST_114") == 255)
                        {
                            stage = 2;
                        }
                    }
                }
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
                cppbindings.C56DE81E7.f14632951(Std.string(stage));
                IkScriptCommand.OpenAnyMenu(6);
                IkScriptCommand.FObj_Set_Animation("npc_main_t1_i003_003", 174);
                IkScriptCommand.ShowMessage(0, "msg_reward_03", "reward", "npc_main_t1_i003_003");
                IkScriptCommand.HideMessageWindow();
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                IkScriptCommand.Fade_Out("transition_fade_inout");
                IkScriptCommand.Wait_Fade();
            }
            else
            {
                IkScriptCommand.HideMessageWindow();
            }
            m_resultParam = selection;
        }
    }
}
