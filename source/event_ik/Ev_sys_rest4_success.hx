package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CB57ED39D3BF7416E")
@:expose("CB57ED39D3BF7416E")
class Ev_sys_rest4_success extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_t1_i004d_0001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 13.83, 0.53, (-2.2), 87.9);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_t1_i004d_0001", 15.85, 0.52, (-2.12), (-92.09));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_t1_i004d_0001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_t1_i004d_0001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([12.67, 1.93, (-1.13)]), lua.Table.create([(-4.81), (-59.92), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_04_talk_12", "restaurant", "npc_t1_i004d_0001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_04_talk_13", "restaurant", "npc_t1_i004d_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_t1_i004d_0001", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.StartItemGetSequenceAuto();
        main.event.ik.command.IkScriptCommand.StartItemGetSequenceAuto();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_04_talk_14", "restaurant", "npc_t1_i004d_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
