package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C1BCD5A24C3EA59B3")
@:expose("C1BCD5A24C3EA59B3")
class Ev_sub_088_030 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_pa_boss", "npc_main_pa_leader"]);
        if (!lua.abi.Host.truthy(untyped main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_088_030")))
        {
            main.event.ik.command.IkScriptCommand.SC20D8767783F61D2();
        };
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var hasBattled:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_088_030");
        if (((false == hasBattled)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 15.7, 0.03, -13.98, 6.85);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_pa_boss", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_pa_leader", false);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_pa_boss", lua.Table.create([15.76, 0.02, -12.05]), -178.0, "npc_main_pa_boss");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_pa_leader", lua.Table.create([14.72, 0.02, -10.98]), 178.0, "npc_main_pa_leader");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_pa_boss", 15.77, 0.02, -9.94, -174.45);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_pa_leader", 21.09, 0.02, -8.85, -105.38);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([10.61, 1.65, -12.06]), lua.Table.create([-0.81, -89.99, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraPosition = lua.Table.create([10.61, 1.02, -12.06]);
            var cameraAngle = lua.Table.create([-0.81, -89.99, 0.0]);
            var cameraEase = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, cameraPosition, cameraAngle, 40.0, 0, cameraEase, null, null, null);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_088_030_talk_01", "sub_088", "npc_main_pa_boss");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_088_030_talk_02", "sub_088", "npc_main_pa_leader");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_main_pa_boss", "Player");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_main_pa_boss");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        };
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_088_030_talk_03", "sub_088", "npc_main_pa_boss");
        var selection:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_088_030_select_01", "msg_Ev_sub_088_030_select_02"]), 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection)))
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        }
        else if (((false == hasBattled)))
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        };
        untyped this.m_resultParam = selection;
    }
}
