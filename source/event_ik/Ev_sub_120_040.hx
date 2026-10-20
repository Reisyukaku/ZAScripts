package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CE7338CCC6BE87A35")
@:expose("CE7338CCC6BE87A35")
class Ev_sub_120_040 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_pokemon_sub120_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub120_1", false);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_holo_researcher", lua.Table.create([410.5, 2.4, 33.33]), 28.45, "npc_main_holo_researcher");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 410.48, 2.41, 30.39, 7.07);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_holo_researcher", false);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_researcher", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([410.42, 3.74, 27.82]), lua.Table.create([-2.84, -163.23, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([409.23, 3.74, 28.18]), lua.Table.create([-2.84, -163.23, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_sub_120_040_talk_01", "sub_120");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_HUMAN_APPEAR");
        this.k_HoloEffect("dyn_main_holo_researcher", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_holo_researcher", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_researcher", 27);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_sub_120_040_talk_02", "sub_120", "dyn_main_holo_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_holo_researcher");
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_holo_researcher", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([409.79, 3.56, 32.02]), lua.Table.create([6.81, -161.79, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([410.2, 3.56, 31.89]), lua.Table.create([6.81, -161.79, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_holo_researcher", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_main_holo_researcher", "Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_sub_120_040_talk_03", "sub_120", "dyn_main_holo_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_researcher", "serious");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([409.7, 3.76, 29.75]), lua.Table.create([-3.94, -145.63, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_holo_researcher", 410.47, 2.4, 31.93, 0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_sub_120_040_talk_04", "sub_120", "dyn_main_holo_researcher");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_120_040_select_01", "msg_Ev_sub_120_040_select_02"]), 0, false, false);
        if (((0 == selection)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_researcher", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_sub_120_040_talk_05", "sub_120", "dyn_main_holo_researcher");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_researcher", 175);
            main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_sub_120_040_talk_06", "sub_120", "dyn_main_holo_researcher");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([405.73, 7.42, 26.61]), lua.Table.create([-32.57, -120.49, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(15.0, lua.Table.create([404.96, 7.42, 27.9]), lua.Table.create([-32.57, -120.49, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_researcher", 14);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_sub_120_040_talk_07", "sub_120", "dyn_main_holo_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_sub_120_040_talk_08", "sub_120", "dyn_main_holo_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_researcher", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_sub_120_040_talk_09", "sub_120", "dyn_main_holo_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([409.94, 3.79, 31.14]), lua.Table.create([3.68, -139.41, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_researcher", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_sub_120_040_talk_10", "sub_120", "dyn_main_holo_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_sub_120_040_talk_11", "sub_120", "dyn_main_holo_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([409.99, 3.96, 32.43]), lua.Table.create([-9.62, -25.78, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_researcher", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_sub_120_040_talk_12", "sub_120", "dyn_main_holo_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_sub_120_040_talk_13", "sub_120", "dyn_main_holo_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([408.49, 5.05, 40.07]), lua.Table.create([6.57, -150.3, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(10.0, lua.Table.create([407.73, 4.87, 38.73]), lua.Table.create([6.57, -150.3, 30.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(4.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_sub_120_040_talk_14", "sub_120", "dyn_main_holo_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([410.46, 3.39, 30.55]), lua.Table.create([-0.6, -179.46, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([410.46, 3.72, 30.55]), lua.Table.create([-0.6, -179.46, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_researcher", 2);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_sub_120_040_talk_15", "sub_120", "dyn_main_holo_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_holo_researcher");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_sub_120_040_talk_16", "sub_120", "dyn_main_holo_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_researcher", "anger_mc");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([410.47, 3.89, 31.29]), lua.Table.create([-0.6, -179.46, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_sub_120_040_talk_17", "sub_120", "dyn_main_holo_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([409.7, 3.76, 29.75]), lua.Table.create([-3.94, -145.63, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_researcher", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_researcher", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_sub_120_040_talk_18", "sub_120", "dyn_main_holo_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_researcher", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_researcher", 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_researcher", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_sub_120_040_talk_19", "sub_120", "dyn_main_holo_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([410.02, 3.4, 30.64]), lua.Table.create([16.76, -154.44, -11.64]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([410.13, 3.48, 30.87]), lua.Table.create([16.76, -154.44, -11.64]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_sub_120_040_talk_20", "sub_120", "dyn_main_holo_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_researcher", "rejoice_big");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_researcher", 29);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0120");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_HUMAN_DISAPPEAR");
        this.k_HoloEffect("dyn_main_holo_researcher", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_holo_researcher", false);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }

    @:hashAbi("FBDD58087485296DE")
    public function k_HoloEffect(?arg0:Dynamic, ?arg1:Dynamic):Dynamic
    {
        var effectKey:String = ("holo_disapp_chara02_" + Std.string(arg0));
        if (!lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey))) {
            main.event.ik.command.IkScriptCommand.CreateEffect("field/event/holo_disapp/holo_disapp_chara02", effectKey);
            this.Await(function():Dynamic {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
            });
        };
        var position:lua.Table<Int, Float> = (cast main.event.ik.command.IkScriptCommand.FObj_Get_Pos(arg0));
        var angle:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Get_Angle(arg0);
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(effectKey, (cast position)[1], ((cast position)[2] + 1.3), (cast position)[3]);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(effectKey, 0, angle, 0);
        main.event.ik.command.IkScriptCommand.PlayEffect(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(arg0, arg1);
        return null;
    }
}
