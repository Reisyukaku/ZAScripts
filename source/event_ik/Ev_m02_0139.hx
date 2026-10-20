package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C639A6E99A2BDC853")
@:expose("C639A6E99A2BDC853")
class Ev_m02_0139 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("HORUBII", lua.Table.create([-658.44, 0, -947.11]), -86.941, 659, 0, 0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -660.53, 0.15, -954.07, -41.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -667.74, 0.01, -944.41, 106.68);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-660.89, 1.53, -953.32]), lua.Table.create([-1.79, -26.17, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0139_talk_01", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0139_talk_02", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-659.84, 0.74, -946.62]), lua.Table.create([-16.25, -69.34, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("HORUBII", 31);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-668.18, 1.5, -943.48]), lua.Table.create([-14.1, -57.58, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-668.92, 1.57, -943.24]), lua.Table.create([-14.1, -57.58, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0139_talk_03", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
