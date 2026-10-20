package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CEBE5DCCC6B861D4F")
@:expose("CEBE5DCCC6B861D4F")
class Ev_sub_116_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub116_001", "npc_pokemon_sub116_1", "npc_pokemon_sub116_2", "npc_pokemon_sub116_3", "npc_pokemon_sub116_4"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-289.22), 1.34, (-942.03), (-113.81));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub116_001", (-289.68), 1.33, (-943.15), (-110.54));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_1", (-290.55), 1.33, (-944.92), 29.23);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_2", (-291.81), 1.33, (-944.93), 49.36);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_3", (-292.26), 1.33, (-943.9), 86.91);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_4", (-291.67), 1.33, (-942.83), 99.59);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub116_1");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub116_2");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub116_3");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub116_4");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub116_2", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub116_001", "npc_pokemon_sub116_2", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub116_001", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var effectKey:String = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-289.52), 3.48, (-940.52)]), lua.Table.create([(-26.91), 32.35, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-289.12), 3.48, (-940.77)]), lua.Table.create([(-26.91), 32.35, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_001_talk_01", "sub_116", "npc_sub116_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub116_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_sub116_001", 20.55);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-289.61), 2.43, (-941.59)]), lua.Table.create([9.81, 2.62, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub116_1", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub116_2", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-289.62), 2.48, (-941.88)]), lua.Table.create([9.81, 2.63, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub116_001", 18);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub116_001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_001_talk_02", "sub_116", "npc_sub116_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-289.63), 2.53, (-942.16)]), lua.Table.create([9.81, 2.63, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub116_001", 20);
        main.event.ik.command.IkScriptCommand.SDF7733B3BCABC76A("npc_sub116_001", "rejoice_big");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_116_001_talk_03", "sub_116", "npc_sub116_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub116_1", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub116_2", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-289.45), 3.37, (-941.5)]), lua.Table.create([(-28.23), 36.0, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub116_001", "npc_pokemon_sub116_2", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_sub116_001", (-110.55));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_001_talk_04", "sub_116", "npc_sub116_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub116_4", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.15);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub116_3", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.15);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub116_2", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.15);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub116_1", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_001_talk_08", "sub_116");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-289.08), 1.34, (-942.07), (-143.07));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-289.47), 3.54, (-939.28)]), lua.Table.create([(-22.94), 9.04, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub116_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub116_001", "Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub116_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub116_001", 2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub116_001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_001_talk_09", "sub_116", "npc_sub116_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub116_001", 33, null, 4.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_001_talk_10", "sub_116", "npc_sub116_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0116");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub116_001", 1);
    }
}
