package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C339CFC4545F1B5CA")
@:expose("C339CFC4545F1B5CA")
class Ev_sub_104_010_5 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_pokemon_sub104_5"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var workValue:Dynamic = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_sub104_COUNT");
        main.event.ik.command.IkScriptCommand.WordSet_Number(2, (12 - (workValue + 1)), 2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-7.0, 9.93, -19.13]), lua.Table.create([-13.14, -66.19, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-7.0, 9.18, -19.13]), lua.Table.create([-13.14, -66.19, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_104_014_talk_01", "sub_104");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_5", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_014_talk_02", "sub_104");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        if ((workValue + 1) < 12)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_104_010_sys_02", "sub_104");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_104_010_sys_03", "sub_104");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
