package event_ik;

import main.event.ik.base.BaseMainScenario;

import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;
import main.event.ik.command.IkScriptCommand.EaseCameraType;
import cppbindings.Vector3Values as Vector3;
import cppbindings.C682D8E4F as SceneApi;

@:keep
@:chunk("event_ik")
@:hashAbi("C639A7599A2BDD438")
@:expose("C639A7599A2BDD438")
class Ev_m02_0130 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", ((lua.Table.create(([-664.28, 0.01, -946.48] : Array<Float>)))), -45.06, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("YAYAKOMA", ((lua.Table.create(([-657.04, 0.13, -944.77] : Array<Float>)))), -157.75, 661, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -681.73, 0.01, -937.81, 113.87);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -681.97, 0.01, -938.81, 112.87);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", ((lua.Table.create(([-668.45, 1.62, -937.53] : Array<Float>)))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("YAYAKOMA", -672.48, -0.01, -938.93, -111.84);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -681.96, 0.01, -938.72, 108.87);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -681.62, 0.01, -937.85, 130.37);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-683.14, 1.87, -934.8] : Array<Float>)))), ((lua.Table.create(([-10.77, -66.39, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.2, ((lua.Table.create(([-684.2, 1.87, -937.23] : Array<Float>)))), ((lua.Table.create(([-10.77, -66.39, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("YAYAKOMA", false);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_M02_0130");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.6);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", ((lua.Table.create(([-671.57, 1.62, -946.49] : Array<Float>)))));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-678.13, 0.62, -937.89] : Array<Float>)))), ((lua.Table.create(([0.16, -68.6, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("YAYAKOMA", -674.24, -0.01, -939.38, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        ext.gf.audio.SoundCommand.PostEvent3DObject("PLAY_SS_EV_M02_0130_PV_0661_00_GLAD1", cppbindings.C682D8E4F.fEF94D11D("event_script").fD4E64AB7("YAYAKOMA"));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("YAYAKOMA", 26));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("YAYAKOMA", -675.02, -0.01, -939.9, 2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("YAYAKOMA", 16);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -681.73, 0.01, -937.81, 113.87);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -681.97, 0.01, -938.81, 112.87);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-683.79, 1.62, -936.03] : Array<Float>)))), ((lua.Table.create(([-15.12, -53.73, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_main_rival_m", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0131_talk_05", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0131_talk_06", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.OpenTips("tips_2000");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0131_talk_21", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.StartItemGetSequenceAuto();
        var rivalAnimation:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0131_talk_07", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0131_talk_08", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(rivalAnimation);
        main.event.ik.command.IkScriptCommand.OpenTips("tips_2020");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "YAYAKOMA", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
