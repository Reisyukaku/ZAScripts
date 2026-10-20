package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CCEFA6BEBB53FD9AA")
@:expose("CCEFA6BEBB53FD9AA")
class Ev_sub_113_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub113_001", "npc_pokemon_sub113_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var questStep:Dynamic = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_QUEST_113");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("KEROMATU", lua.Table.create([-888.03, 17.89, -266.57]), untyped -150.15, 656, 0, 0);
        untyped main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        if (((1 == questStep)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -899.85, 0.16, -271.66, 39.05);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub113_001", "Player");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub113_001");
            var openingAngle = lua.Table.create([-5.7, -130.08, -0.0]);
            var openingEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-903.18, 1.47, -272.8]), openingAngle, 40.0, 0, openingEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub113_001", "Player");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub113_001");
        };
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_113_010_talk_01", "sub_113", "npc_sub113_001");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_113_010_select_01", "msg_Ev_sub_113_010_select_02"]), 0, true, false);
        if (((0 == selection)))
        {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_113_010_talk_03", "sub_113", "npc_sub113_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_SUB_0113_READY");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub113_1", false);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -901.2, 0.16, -269.79, 31.43));
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub113_001", "Player");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-909.7, 3.43, -272.35]), lua.Table.create([-15.3, -105.53, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(15, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB_113_010_CAMERA_WHOOSH15");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-909.7, 23.53, -272.35]), lua.Table.create([-15.3, -105.53, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(15, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-896.02, 20.43, -268.61]), lua.Table.create([-15.3, -105.53, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var endingAngle = lua.Table.create([-15.3, -105.53, -0.0]);
            var endingEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-894.99, 20.15, -268.32]), endingAngle, 40.0, 0, endingEase);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KEROMATU", 17);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_UI_QUEST_GUIDE_OFF");
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_113_010_talk_02", "sub_113", "npc_sub113_001");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        untyped this.m_resultParam = selection;
    }
}
