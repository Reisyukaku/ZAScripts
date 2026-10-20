package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C8D09F063D4CA2DA7")
@:expose("C8D09F063D4CA2DA7")
class Ev_sub_011_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -221.72, 2.89, -813.58, 64.15);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub011_002", -218.78, 2.88, -813.32, -109.86);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub011_001", -219.84, 2.88, -812.35, -123.02);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub011_004", -220.43, 2.88, -811.07, -132.92);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub011_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub011_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub011_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub011_004", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-224.09, 4.58, -812.95]), lua.Table.create([-12.56, -92.99, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_011_010_talk_01", "sub_011", "npc_sub011_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub011_001", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_011_010_talk_03", "sub_011", "npc_sub011_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_011_010_talk_05", "sub_011", "npc_sub011_001");
        cppbindings.C56DE81E7.f3CE87C91();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub011_001", 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_011_010_talk_06", "sub_011", "npc_sub011_001");
        var menuSelection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_011_010_select_01", "msg_Ev_sub_011_010_select_02"]), (0 : Dynamic), (true : Dynamic), (false : Dynamic), (2 : Dynamic), 0, "sub_011"));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var fObj_Reset_Animation:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation;
        fObj_Reset_Animation(("npc_sub011_001" : Dynamic));
        var menuSelectionAfterBranch2:Dynamic = null;
        if (0 == menuSelection)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            var getCurrentMoneyResult:Dynamic = main.event.ik.command.IkScriptCommand.GetCurrentMoney();
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub011_001");
            main.event.ik.command.IkScriptCommand.Wait_Time((0.5 : Dynamic));
            var cannotAfford:Bool = (untyped getCurrentMoneyResult >= 0) && (untyped getCurrentMoneyResult < 5800);
            var menuSelectionAfterBranch:Dynamic = null;
            if (lua.abi.Host.truthy(cannotAfford))
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub011_001", 175);
                main.event.ik.command.IkScriptCommand.ShowMessage((0 : Dynamic), ("msg_Ev_sub_011_010_talk_11" : Dynamic), ("sub_011" : Dynamic), ("npc_sub011_001" : Dynamic));
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.DestoryMoneyUI();
                var suspend:Dynamic = untyped main.event.ik.command.IkScriptCommand.Suspend;
                suspend();
                menuSelectionAfterBranch = (1 : Dynamic);
            }
            else
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub011_001", 174);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, ("msg_Ev_sub_011_010_talk_12" : Dynamic), ("sub_011" : Dynamic), ("npc_sub011_001" : Dynamic));
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                cppbindings.C56DE81E7.fD89D2D1D(-5800);
                main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                main.event.ik.command.IkScriptCommand.DestoryMoneyUI();
                main.event.ik.command.IkScriptCommand.Suspend();
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_MUTE_T1000");
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T1000");
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
                var executeBGMCommand:Dynamic = untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand;
                executeBGMCommand(("EV_CMN_FADE_OUT_2S" : Dynamic));
                menuSelectionAfterBranch = menuSelection;
            };
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out(("transition_fade_inout" : Dynamic), (1.0 : Dynamic));
            var wait_Fade:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Fade;
            wait_Fade();
            menuSelectionAfterBranch2 = menuSelectionAfterBranch;
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub011_001", 175);
            main.event.ik.command.IkScriptCommand.ShowMessage((0 : Dynamic), ("msg_Ev_sub_011_010_talk_10" : Dynamic), ("sub_011" : Dynamic), ("npc_sub011_001" : Dynamic));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.DestoryMoneyUI();
            var suspend2:Dynamic = untyped main.event.ik.command.IkScriptCommand.Suspend;
            suspend2();
            menuSelectionAfterBranch2 = menuSelection;
        };
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub011_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub011_001");
        untyped this.m_resultParam = menuSelectionAfterBranch2;
    }
}
