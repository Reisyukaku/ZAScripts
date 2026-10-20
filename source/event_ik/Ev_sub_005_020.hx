package event_ik;

import main.event.ik.base.BaseSubQuest;

import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;
import main.event.ik.command.IkScriptCommand.EaseCameraType;
import cppbindings.Vector3Values as Vector3;

@:keep
@:chunk("event_ik")
@:hashAbi("CB4CEC95099982C45")
@:expose("CB4CEC95099982C45")
class Ev_sub_005_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -959.94, 0.24, -504.08, -59.6);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub005_001", -961.18, 0.23, -504.05, 98.66);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub005_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub005_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-957.98, 2.0, -506.45] : Array<Float>)))), ((lua.Table.create(([-8.84, 133.89, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, ((lua.Table.create(([-958.96, 1.79, -505.51] : Array<Float>)))), ((lua.Table.create(([-8.84, 133.89, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub005_001", 22);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub005_001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_005_020_talk_01", "sub_005", "npc_sub005_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_005_020_talk_02", "sub_005", "npc_sub005_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub005_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_005_020_talk_03", "sub_005", "npc_sub005_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var npcAnimation:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub005_001", 28);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub005_001", "normal");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-960.4, 1.18, -504.63] : Array<Float>)))), ((lua.Table.create(([10.42, 128.71, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, ((lua.Table.create(([-960.4, 1.55, -504.63] : Array<Float>)))), ((lua.Table.create(([10.42, 128.71, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_005_020_talk_04", "sub_005", "npc_sub005_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcAnimation);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("npc_sub005_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub005_001", 174);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub005_001", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_005_020_talk_05", "sub_005", "npc_sub005_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0005");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
