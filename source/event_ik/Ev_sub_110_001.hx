package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CB4BFE4DFE4214D9D")
@:expose("CB4BFE4DFE4214D9D")
class Ev_sub_110_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub110_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var itemState:Dynamic = main.event.ik.command.IkScriptCommand.SD2850AEE9F875155("field_item302a_a0102_002");
        if (lua.abi.Host.truthy(itemState))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub110_001", "Player");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub110_001");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub110_001", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub110_001", "Player", "head");
            untyped main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub110_001");
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.S40ACEF14A8745A74("world/ik_obj_template/effect/field/gimmick/field_item304a", "test1", lua.Table.create([-903.17505, 25.124765, untyped -344.72427]), 173.7444);
            main.event.ik.command.IkScriptCommand.SBE4399F61C307041();
            main.event.ik.command.IkScriptCommand.S5AED1F1B5B2A7020();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub110_001", "Player");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub110_001");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub110_001", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub110_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub110_001");
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
        };
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub110_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_110_001_talk_01", "sub_110", "npc_sub110_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-897.64, 26.46, -346.09]), lua.Table.create([-9.74, 104.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-898.73, 26.26, -345.82]), lua.Table.create([-9.74, 104.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub110_1", -883.65, 25.92, -352.06, 89.94);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub110_001", -883.32, 25.92, -351.44, 103.9);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -881.52, 25.94, -351.82, -91.29);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_110_001_talk_02", "sub_110", "npc_sub110_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_110_001_talk_03", "sub_110", "npc_sub110_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-879.99, 27.19, -354.1]), lua.Table.create([-9.5, 133.54, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub110_001", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub110_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub110_001", "npc_pokemon_sub110_1", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_110_001_talk_04", "sub_110", "npc_sub110_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub110_001", "sad");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub110_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub110_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_110_001_talk_06", "sub_110", "npc_sub110_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-882.8, 26.14, -352.67]), lua.Table.create([-4.67, 131.05, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub110_001", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub110_1", 25);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_110_001_talk_07", "sub_110", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub110_001", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-879.99, 27.19, -354.1]), lua.Table.create([-9.5, 133.54, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub110_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub110_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub110_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub110_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_110_001_talk_08", "sub_110", "npc_sub110_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub110_001", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_110_001_talk_09", "sub_110", "npc_sub110_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0110");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_sub110_001", 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
