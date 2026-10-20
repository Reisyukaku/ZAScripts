package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C40A1B946BF9EDB26")
@:expose("C40A1B946BF9EDB26")
class Ev_sub_069_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub069_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_t1veil01_pclady", -757.38, 0.65, -876.1, -144.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -758.27, 0.66, -877.34, 36.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_t1veil01_pclady", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_t1veil01_pclady", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-759.24, 1.96, -877.95]), lua.Table.create([-0.69, -113.27, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-759.42, 1.96, -877.55]), lua.Table.create([-0.69, -113.27, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_069_001_talk_01", "sub_069", "npc_t1veil01_pclady");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-758.47, 2.07, -876.85]), lua.Table.create([-0.69, -123.75, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(21, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([-758.08, 2.11, -876.59]), lua.Table.create([-0.69, -123.76, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(21, Int)))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_t1veil01_pclady", "battle");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_069_001_talk_02", "sub_069", "npc_t1veil01_pclady");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-759.42, 1.96, -877.55]), lua.Table.create([-0.69, -113.27, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_t1veil01_pclady", "battle");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_069_001_talk_03", "sub_069", "npc_t1veil01_pclady");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0069");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-758.08, 2.11, -876.59]), lua.Table.create([-0.69, -123.76, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(21, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_t1veil01_pclady", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_069_001_talk_04", "sub_069", "npc_t1veil01_pclady");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
