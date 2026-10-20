package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CFE62376659DE2C17")
@:expose("CFE62376659DE2C17")
class Ev_m05_1300 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_main_ju_boss"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_detective", lua.Table.create([(-813.01), 18.13, (-429.17)]), (-156.12), "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-814.67), 18.13, (-428.52), (-150.57));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ju_boss", (-815.58), 18.12, (-432.85), (-155.0));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "npc_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-814.66), 19.69, (-430.67)]), lua.Table.create([0.0, 22.68, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.2, lua.Table.create([(-814.03), 19.43, (-429.18)]), lua.Table.create([0.0, 22.68, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        var moveHandle1 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_detective", (-814.06), 18.14, (-430.57), 1.0);
        var moveHandle2 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", (-814.98), 18.13, (-430.13), 1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ju_boss", "dyn_main_detective", "head");
        var turnHandle3 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_ju_boss", 13.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle3);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ju_boss", "sad", "npc_main_ju_boss");
        var animationHandle4 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ju_boss", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1300_talk_01", "main_05_01", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle4);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ju_boss", "normal", "npc_main_ju_boss");
        var animationHandle5 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1300_talk_02", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ju_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "Player", "head");
        var turnHandle6 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_detective", (-108.1));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_detective", "head");
        var turnHandle7 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 152.88);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1300_talk_03", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle6);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle7);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T1000");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-815.05), 18.13, (-430.32), (-158.29)));
    }
}
