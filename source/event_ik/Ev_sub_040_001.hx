package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CEC7CADADECD95CDF")
@:expose("CEC7CADADECD95CDF")
class Ev_sub_040_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub040_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub040_001", 3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_sub040_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub040_001", "head");
        var isRain:Dynamic = main.event.ik.command.IkScriptCommand.IsCheckWeather("rain");
        var isStorm:Dynamic = main.event.ik.command.IkScriptCommand.IsCheckWeather("storm");
        if (((((false == isRain)) && ((false == isStorm)))))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub040_001", 22);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_040_001_talk_01", "sub_040", "npc_sub040_001");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub040_001", 20);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_040_001_talk_02", "sub_040", "npc_sub040_001");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub040_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub040_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub040_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub040_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_040_001_talk_03", "sub_040", "npc_sub040_001");
        untyped main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_040_001_talk_04", "sub_040", "npc_sub040_001");
        if (((((false == isRain)) && ((false == isStorm)))))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub040_001", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_040_001_talk_05", "sub_040", "npc_sub040_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0040");
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub040_001", 20);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_040_001_talk_06", "sub_040", "npc_sub040_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0040");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub040_001", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_040_001_talk_07", "sub_040", "npc_sub040_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        };
    }
}
