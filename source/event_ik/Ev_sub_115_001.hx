package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C2030BAFA2828E7C6")
@:expose("C2030BAFA2828E7C6")
class Ev_sub_115_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_sub115_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_MUTE_T500");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("EMONGA_WALK", lua.Table.create([-767.63, 19.68, -224.35]), 90.41, 587, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("EMONGA_FLY", lua.Table.create([-767.98, 19.73, -223.9]), 113.48, 587, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub115_001", "anger_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("EMONGA_FLY", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub115_001", -765.81, 19.7, -223.71, -173.19);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -765.93, 19.7, -225.11, 19.07);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-766.36, 21.1, -224.5]), lua.Table.create([0.42, -140.74, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_115_001_talk_02", "sub_115", "npc_sub115_001");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-767.15, 21.06, -225.91]), lua.Table.create([-3.28, -137.05, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub115_001", "normal");
        var animationHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub115_001", 22);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_115_001_talk_03", "sub_115", "npc_sub115_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub115_001", 32, null, 3.72);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_115_001_talk_04", "sub_115", "npc_sub115_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_115_001_talk_05", "sub_115", "npc_sub115_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_115_001_talk_06", "sub_115", "npc_sub115_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub115_001", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("EMONGA_WALK", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_115_001_talk_08", "sub_115", "npc_sub115_001", false, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -765.93, 19.7, -225.11, -63.27);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub115_001", -765.81, 19.7, -223.71, -112.87);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "EMONGA_WALK", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub115_001", "EMONGA_WALK", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("EMONGA_WALK", lua.Table.create([-765.66, 21.14, -224]));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-765.66, 20.79, -224.36]), lua.Table.create([-22.17, 91.15, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-763.83, 21.54, -224.4]), lua.Table.create([-22.17, 91.15, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FadeInEnum(7, null, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("EMONGA_WALK", 17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 21);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub115_001", 21);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_115_001_talk_09", "sub_115", "npc_sub115_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("EMONGA_WALK", -771.15, 19.68, -219.99, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-769.98, 20.19, -221.01]), lua.Table.create([-7.59, 131.51, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("EMONGA_WALK", -787.09, 21.92, -203.22, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub115_001", "anger_mc");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-767.15, 21.06, -225.91]), lua.Table.create([-3.28, -137.05, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub115_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var turnHandle2 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub115_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub115_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_sub115_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub115_001", 32, null, 3.72);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_115_001_talk_07", "sub_115", "npc_sub115_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0115");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_RESET_T500");
    }
}
