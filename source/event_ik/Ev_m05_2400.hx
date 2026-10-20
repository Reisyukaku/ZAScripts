package event_ik;

import main.event.ik.base.BaseMainScenario;

import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;
import main.event.ik.command.IkScriptCommand.EaseCameraType;
import cppbindings.Vector3Values as Vector3;

@:keep
@:chunk("event_ik")
@:hashAbi("CC945125FF32FE8FD")
@:expose("CC945125FF32FE8FD")
class Ev_m05_2400 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_detective", ((lua.Table.create(([61.57, -0.1, -227.36] : Array<Float>)))), 170.77, "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ju_boss", ((lua.Table.create(([59.87, -0.1, -227.57] : Array<Float>)))), 179.72, "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("SYANDERA", ((lua.Table.create(([59.91, 0.49, -266.29] : Array<Float>)))), -178.83, 609, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 60.58, -0.09, -228.59, 178.5));
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([60.7, 2.13, -234.18] : Array<Float>)))), ((lua.Table.create(([-8.81, 13.25, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var syanderaMove:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("SYANDERA", 54.27, 0.49, -269.54, 0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 60.58, -0.09, -226.59, 178.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_detective", 61.57, -0.25, -225.36, 170.77);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_ju_boss", 59.87, -0.25, -225.57, 179.72);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.38, ((lua.Table.create(([61.62, 1.99, -224.54] : Array<Float>)))), ((lua.Table.create(([-9.21, 13.05, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(syanderaMove);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 60.58, -0.09, -228.59, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_detective", 61.57, -0.1, -227.36, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_ju_boss", 59.87, -0.1, -227.57, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2400_talk_01", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2400_talk_02", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_OFF");
    }
}
