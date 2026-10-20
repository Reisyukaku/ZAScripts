package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CCEF6E5EBB53CC021")
@:expose("CCEF6E5EBB53CC021")
class Ev_sub_113_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub113_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("KEROMATU", lua.Table.create([-915.79, 15.21, -293.72]), -7.64, 656, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub113_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub113_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub113_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub113_001");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub113_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub113_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_113_020_talk_01", "sub_113", "npc_sub113_001");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_113_020_select_01", "msg_Ev_sub_113_020_select_02"]), 0, true, false);
        if (((0 == selection)))
        {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_113_020_talk_03", "sub_113", "npc_sub113_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_SUB_0113_READY");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub113_1", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub113_001", -911.77, 0.0, -287.0, -161.42);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -904.49, 2.07, -295.68, -70.15));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-910.92, 11.59, -282.58]), lua.Table.create([-30.13, -25.91, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(15, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB_113_010_CAMERA_WHOOSH15");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-924.02, 20.79, -278.47]), lua.Table.create([-30.13, -25.91, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(15, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-919.24, 18.89, -287.45]), lua.Table.create([-25.41, -30.05, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraAngle = lua.Table.create([-25.41, -30.05, 0.0]);
            var cameraEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-918.61, 18.3, -288.53]), cameraAngle, 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KEROMATU", 17);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_113_020_talk_02", "sub_113", "npc_sub113_001");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        untyped this.m_resultParam = selection;
    }
}
