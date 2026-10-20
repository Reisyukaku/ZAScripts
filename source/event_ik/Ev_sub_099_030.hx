package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C64CE7E4DCD6338C5")
@:expose("C64CE7E4DCD6338C5")
class Ev_sub_099_030 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_pokemon_sub099_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_MUTE_T500");
        var effectKey:String = "kirakira";
        main.event.ik.command.IkScriptCommand.CreateEffect("field/item/kira/ef_item_kira_red", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(effectKey, -472.51, 17.23, -875.09);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -476.27, 17.23, -875.03, 99.31);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub099_1", -472.51, 17.23, -875.09, -101.22);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-475.12, 18.5, -874.11]), lua.Table.create([-10.03, -68.73, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub099_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub099_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("npc_pokemon_sub099_1", 8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_099_030_talk_01", "sub_099");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-477.54, 18.69, -874.22]), lua.Table.create([-10.03, -68.73, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-474.39, 17.9, -869.94]), lua.Table.create([-0.18, -0.79, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-474.35, 17.9, -870.62]), lua.Table.create([-0.17, -0.79, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-474.64, 18.54, -874.3]), lua.Table.create([-9.14, -67.79, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-474.08, 18.54, -874.54]), lua.Table.create([-9.14, -67.79, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("npc_pokemon_sub099_1", 11);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_099_030_talk_02", "sub_099");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub099_1", 17);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.PlayEffect(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub099_1", false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-477.58, 18.66, -874.13]), lua.Table.create([-9.13, -67.21, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-478.36, 18.66, -873.8]), lua.Table.create([-9.13, -67.21, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("White", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 27);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 107);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(4.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -474.5, 17.23, -875.15, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-473.35, 18.11, -874.61]), lua.Table.create([6.9, 56.03, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 141);
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_099_030_sys_01", "sub_099");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal");
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 142);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-471.54, 17.36, -873.5]), lua.Table.create([12.35, 72.26, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-470.29, 17.36, -872.62]), lua.Table.create([12.35, 72.26, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -73.94, false));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_099_030_sys_02", "sub_099");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0099");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_RESET_T500");
    }
}
