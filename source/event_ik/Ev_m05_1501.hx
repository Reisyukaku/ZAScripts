package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CEDE8E06650C72DAE")
@:expose("CEDE8E06650C72DAE")
class Ev_m05_1501 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_ju_boss", "npc_main_ga_boss"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_detective", lua.Table.create([24.41, 0.01, -16.84]), -94.63, "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 22.79, 0.01, -16.74, 156.33);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ju_boss", 24.02, 0.01, -18.78, -12.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ga_boss", 25.3, 0.01, -18.74, -40.49);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ju_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ga_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([22.58, 1.48, -15.43]), lua.Table.create([-6.7, -31.84, 0.0]), 40.0, 0, (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ga_boss", "Player", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "battle", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 491);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_35", "main_05_01", "npc_main_ga_boss");
        var choices = (["msg_Ev_m05_1500_select_04", "msg_Ev_m05_1500_select_05"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(choices, 0, true, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "normal", "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([24.46, 1.61, -17.92]), lua.Table.create([-16.49, -44.27, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var battleAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 346);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_37", "main_05_01", "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(battleAnimation);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "normal", "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 1));
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "normal", "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 1);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "sad", "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 25);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_36", "main_05_01", "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "normal", "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_ga_boss"));
        };
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
        untyped this.m_resultParam = selection;
    }
}
