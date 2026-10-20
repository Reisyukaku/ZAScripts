package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C6B611173C83CFAB3")
@:expose("C6B611173C83CFAB3")
class Ev_m01_0062 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "initial_3_waninoko"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -683.29, 0.01, -836.22, 27.6);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -682.85, 0.0, -834.75, -162.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("initial_3_pokabu", -679.62, 0.01, -834.81, -115.42);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("initial_3_chicorita", -679.39, 0.01, -836.83, -80.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("initial_3_waninoko", -679.57, 0.01, -835.83, -94.42);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("initial_3_waninoko", 17);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-680.63, 0.89, -834.9]), lua.Table.create([-26.72, -47.54, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(6, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("initial_3_pokabu", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("initial_3_chicorita", false);
        main.event.ik.command.IkScriptCommand.EnableDirectionalMain(1.0, -0.8);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-680.43, 0.76, -835.08]), lua.Table.create([-26.72, -47.54, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(6, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0062_talk_01", "main_01_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(2, (cast(158, Int)));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0060_talk_02", "main_01_01", "npc_main_rival_m");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m01_0060_select_01", "msg_Ev_m01_0060_select_02"]), 0, true, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("initial_3_waninoko", 17);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("initial_3_pokabu", true);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("initial_3_chicorita", true);
            var cameraPosition = lua.Table.create([-684.94, 1.59, -837.4]);
            var cameraAngle = lua.Table.create([-11.48, -124.2, -0.0]);
            var cameraEase = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraPosition, cameraAngle, 40.0, 0, cameraEase, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 20);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0060_talk_03", "main_01_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S_LOW");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("initial_3_pokabu", true);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("initial_3_chicorita", true);
            var cameraPosition = lua.Table.create([-684.94, 1.59, -837.4]);
            var cameraAngle = lua.Table.create([-11.48, -124.2, -0.0]);
            var cameraEase = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraPosition, cameraAngle, 40.0, 0, cameraEase, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_rival_m", 32, null, 2.0);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_main_010200_000_talk_01", "main_01_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.EnableDirectionalMain(1.0, -0.8);
            main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
        };
        untyped this.m_resultParam = selection;
    }
}
