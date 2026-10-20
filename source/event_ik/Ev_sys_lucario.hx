package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CB243C42229657BE3")
@:expose("CB243C42229657BE3")
class Ev_sys_lucario extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "lucario_get_talk_01", "lucario_get");
        var choices = (["lucario_get_select_01", "lucario_get_select_02"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(choices, 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection)))
        {
            var giftMode:Dynamic = untyped m_eventScriptParam.f73EE8FEC();
            if ((("0" == giftMode)))
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "lucario_get_talk_02", "lucario_get");
                untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped selection = 1;
            }
            else
            {
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_POKEGET");
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "lucario_get_talk_05", "lucario_get");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.0, 0.97, -0.72]), lua.Table.create([16.05, -157.84, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 0.45, 0.02, 0.34, -122.04);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 201);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
                main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "lucario_get_talk_03", "lucario_get");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                var cameraEase = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(35.0, lua.Table.create([0.16, 1.21, -0.36]), lua.Table.create([16.05, -157.84, -0.0]), 40.0, 0, cameraEase);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "lucario_get_talk_04", "lucario_get");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
                untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
            };
        }
        else if (((1 == selection)))
        {
        };
        untyped this.m_resultParam = selection;
    }
}
