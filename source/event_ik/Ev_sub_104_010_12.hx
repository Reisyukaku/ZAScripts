package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CA568A9B5D9AC04A4")
@:expose("CA568A9B5D9AC04A4")
class Ev_sub_104_010_12 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_pokemon_sub104_12"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var workValue:Dynamic = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_sub104_COUNT");
        main.event.ik.command.IkScriptCommand.WordSet_Number(2, ((12 - ((workValue + 1)))), 2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([10.58, 0.89, -37.69]), lua.Table.create([-18.05, 48.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([10.9, 0.89, -38.06]), lua.Table.create([-18.05, 48.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_104_022_talk_01", "sub_104");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_12", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_022_talk_02", "sub_104");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var updatedCount:Dynamic = (workValue + 1);
        if (((updatedCount < 12)))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_104_010_sys_02", "sub_104");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_104_010_sys_03", "sub_104");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
