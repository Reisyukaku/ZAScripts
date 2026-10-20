package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C64B55DCCAE6C8B11")
@:expose("C64B55DCCAE6C8B11")
class Ev_sub_109_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = [];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.23, 2.63, -24.09]), lua.Table.create([-6.03, 50.24, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([3.78, 2.63, -28.91]), lua.Table.create([-6.03, 50.24, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 0.0, 0.88, 10.8, 180.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_sub109_001", lua.Table.create([1.02, 0.86, 9.87]), 173.14, "npc_child02_a_m_01");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub109_001", 491);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([2.09, 2.22, 7.93]), lua.Table.create([-6.12, 25.49, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([1.43, 2.22, 12.7]), lua.Table.create([-6.12, 25.49, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([2.09, 2.13, 7.67]));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-1.23, 2.13, 8.52]));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_109_010_sys_01", "sub_109");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_109_010_sys_02", "sub_109");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal");
    }
}
