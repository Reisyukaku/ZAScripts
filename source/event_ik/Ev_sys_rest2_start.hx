package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CCC298BFE8A62CF13")
@:expose("CCC298BFE8A62CF13")
class Ev_sys_rest2_start extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_t1_i004b_0001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_t1_i004b_0001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_t1_i004b_0001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_t1_i004b_0001", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_02_talk_01", "restaurant", "npc_t1_i004b_0001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_02_talk_02", "restaurant", "npc_t1_i004b_0001");
        cppbindings.C56DE81E7.f3CE87C91();
        var selection:Dynamic = 1;
        var availableMoney:Dynamic = main.event.ik.command.IkScriptCommand.GetCurrentMoney();
        while (1 == selection)
        {
            selection = main.event.ik.command.IkScriptCommand.ShowContextMenu(
                ["msg_restaurant_02_select_01", "msg_restaurant_02_select_02", "msg_restaurant_02_select_03"], 0, true, false);
            if (0 == selection)
            {
                // Unsigned comparison from the reference, using the entry snapshot.
                var cannotAfford:Bool = (untyped availableMoney < 0) ? false : (untyped 15000 > availableMoney);
                if (cannotAfford)
                {
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_02_talk_04", "restaurant", "npc_t1_i004b_0001");
                    main.event.ik.command.IkScriptCommand.DestoryMoneyUI();
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                }
                else
                {
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_02_talk_03", "restaurant", "npc_t1_i004b_0001");
                    cppbindings.C56DE81E7.fD89D2D1D(-15000);
                    main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                    main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                    untyped this.m_resultParam = 1;
                }
            }
            else if (1 == selection)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_02_talk_05", "restaurant", "npc_t1_i004b_0001");
            }
            else if (2 == selection)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_02_talk_06", "restaurant", "npc_t1_i004b_0001");
                main.event.ik.command.IkScriptCommand.DestoryMoneyUI();
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            }
        }
    }
}
