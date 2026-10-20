package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C0445C71561A1367E")
@:expose("C0445C71561A1367E")
class Ev_m06_0020 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    @:abiSlot(10)
    public var slot10:Dynamic;

    @:abiSlot(11)
    public var slot11:Dynamic;

    @:abiSlot(12)
    public var slot12:Dynamic;

    @:abiSlot(13)
    public var slot13:Dynamic;

    public function new()
    {
        untyped (this)[13] = "npc_pokemon_floette";
        untyped (this)[12] = "poke_hura";
        untyped (this)[11] = "dyn_az";
        untyped (this)[10] = "dyn_deu";
        untyped (this)[9] = "dyn_pyu";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_friend_m", "npc_main_friend_f", "npc_main_hotel_manager"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_M8DB_T0");
        cppbindings.C5090F7B8.f92941AC0("flag_replace_teacup03", true);
        cppbindings.C5090F7B8.f92941AC0("flag_replace_teapot", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.WordSet_Name_Rival(1, true);
        var sceneVector:Dynamic = lua.Table.create([-2.59, 1.03, -3.82]);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot12, sceneVector, 44.0, 670, 5, 0);
        var sceneVector2:Dynamic = lua.Table.create([0.4, 0.01, -3.5]);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot9, sceneVector2, -5.87, "npc_main_friend_m");
        var sceneVector3:Dynamic = lua.Table.create([0.4, 0.01, -3.5]);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot10, sceneVector3, -5.87, "npc_main_friend_f");
        var sceneVector4:Dynamic = lua.Table.create([-2.88, 0, -7.27]);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot11, sceneVector4, 0.5, "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_hotel_manager", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot13, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot8, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot9, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot9, 70);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, 0.4, 0.01, -3.5, -5.87);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, 9.5, 1.03, 7.6, -145.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, 8.85, 0.28, 7.73, -168.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_EV_DO_CL");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, 1.4, 0, -0.34, -11.77);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot8, 1.46, 0, 1.1, 0.5);
        var sceneVector5:Dynamic = lua.Table.create([-0.91, 1.5, 0.93]);
        var sceneVector6:Dynamic = lua.Table.create([-8.78, -110.58, -0.0]);
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector5, sceneVector6, 40.0, 0, cameraEase);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var sceneVector7:Dynamic = lua.Table.create([-0.84, 1.5, 0.73]);
        var sceneVector8:Dynamic = lua.Table.create([-8.78, -110.58, -0.0]);
        var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, sceneVector7, sceneVector8, 40.0, 0, cameraEase2);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_0020_talk_01", "main_06_01", this.slot9, null, null, (function():Dynamic {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[12], scenario[8], "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[8], "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[12], scenario[8], "head");
            untyped (cast scenario : Dynamic).F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[9], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var sceneVector9:Dynamic = lua.Table.create([6.08, 1.88, 3.09]);
        var sceneVector10:Dynamic = lua.Table.create([-13.61, -138.93, 0.0]);
        var cameraEase3:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector9, sceneVector10, 40.0, 0, cameraEase3);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, 6.59, 0.33, 2.92, 31.51);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot8, 7.7, 0.33, 4.36, 0.5);
        var sceneVector11:Dynamic = lua.Table.create([8.85, 3.2800000000000002, 7.73]);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot9, sceneVector11);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot12, this.slot9, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_02", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_0020_talk_03", "main_06_01", this.slot9, null, null, (function():Dynamic {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario[9]);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(scenario[9], 175);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var sceneVector12:Dynamic = lua.Table.create([8.21, 1.3, 6.64]);
        var sceneVector13:Dynamic = lua.Table.create([-3.41, -144.95, -0.0]);
        var cameraEase4:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector12, sceneVector13, 40.0, 0, cameraEase4);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_0020_talk_04", "main_06_01", this.slot9, null, null, (function():Dynamic {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[8], "head");
            main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "rejoice_small", "npc_main_friend_m");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "rejoice_big_mc", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_42", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 74);
        this.TimeWait(0.5);
        var sceneVector14:Dynamic = lua.Table.create([7.56, 1.62, 5.43]);
        var sceneVector15:Dynamic = lua.Table.create([0.0, -11.38, 0.0]);
        var cameraEase5:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector14, sceneVector15, 40.0, 0, cameraEase5);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot12, this.slot8, "head");
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_S_ITEM_GET_EVENT");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m06_0020_talk_44", "main_06_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var sceneVector16:Dynamic = lua.Table.create([8.21, 1.3, 6.64]);
        var sceneVector17:Dynamic = lua.Table.create([-3.41, -144.95, -0.0]);
        var cameraEase6:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector16, sceneVector17, 40.0, 0, cameraEase6);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_43", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_CL");
        var sceneVector18:Dynamic = lua.Table.create([-1.2, 1.43, 2.83]);
        var sceneVector19:Dynamic = lua.Table.create([-6.91, -112.45, -0.0]);
        var cameraEase7:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector18, sceneVector19, 40.0, 0, cameraEase7);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "serious", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, 0.49, -0.0, 5.77, 177.49);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot10, 0.49, -0.0, 4.01, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot12, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "battle", "npc_main_friend_f");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot12, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m06_0020_talk_05", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "normal", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot9, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot10, 90.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var sceneVector20:Dynamic = lua.Table.create([4.96, 1.83, 2.82]);
        var sceneVector21:Dynamic = lua.Table.create([-11.4, -139.5, 0.0]);
        var cameraEase8:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector20, sceneVector21, 40.0, 0, cameraEase8);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, 4.19, 0.3, 5.69, 59.24);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot10, 6.25, 0.3, 5.67, 0.5);
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_06", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot9, 33);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_07", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var sceneVector22:Dynamic = lua.Table.create([7.53, 1.78, 5.71]);
        var sceneVector23:Dynamic = lua.Table.create([-6.0, 88.41, 0.0]);
        var cameraEase9:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector22, sceneVector23, 40.0, 0, cameraEase9);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 24);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_0_5S_SUS");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m06_0020_talk_08", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_05_SUS");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_09", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var sceneVector24:Dynamic = lua.Table.create([5.87, 1.91, 4.63]);
        var sceneVector25:Dynamic = lua.Table.create([-14.32, -146.7, 0.0]);
        var cameraEase10:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector24, sceneVector25, 40.0, 0, cameraEase10);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "surprise", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_10", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_11", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_1_5S");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var sceneVector26:Dynamic = lua.Table.create([9.02, 1.75, 4.84]);
        var sceneVector27:Dynamic = lua.Table.create([-7.82, 87.02, 0.0]);
        var cameraEase11:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector26, sceneVector27, 40.0, 0, cameraEase11);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_ROTOM_CALL");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot8);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "normal", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "normal", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot12, -116.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot12, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.CreateRotomPhone(this.slot8);
        main.event.ik.command.IkScriptCommand.SD6D113514F022E54(this.slot8);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(this.slot8);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(this.slot8);
        main.event.ik.command.IkScriptCommand.LookAtRotomPhone(this.slot8);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m06_0020_talk_12", "main_06_01");
        var menuSelection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m06_0020_select_01", "msg_Ev_m06_0020_select_02"]), 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "serious", "npc_main_friend_f");
        if ((0 == menuSelection)) {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 18);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m06_0020_talk_13", "main_06_01");
        } else {
            if ((1 == menuSelection)) {
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 19);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m06_0020_talk_14", "main_06_01");
            } else { };
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var sceneVector28:Dynamic = lua.Table.create([8.02, 1.72, 2.6]);
        var sceneVector29:Dynamic = lua.Table.create([-8.45, 169.85, -0.0]);
        var cameraEase12:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector28, sceneVector29, 40.0, 0, cameraEase12);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m06_0020_talk_15", "main_06_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m06_0020_talk_16", "main_06_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m06_0020_talk_17", "main_06_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m06_0020_talk_18", "main_06_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m06_0020_talk_19", "main_06_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone(this.slot8);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway(this.slot8);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_0S");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_0020_talk_20", "main_06_01", this.slot10, null, null, (function():Dynamic {
            main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[10], "dislike", "npc_main_friend_f");
            untyped (cast scenario : Dynamic).F32FAD7D4DF3ACA95(1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[10], "head");
            return null;
        }));
        var dialogueChoices:Dynamic = [null, null];
        dialogueChoices[0] = main.event.ik.command.IkScriptCommand.CreateRivalText("msg_Ev_m06_0020_select_03", null, 1);
        var createPlaneTextResult:Dynamic = main.event.ik.command.IkScriptCommand.CreatePlaneText("msg_Ev_m06_0020_select_04");
        dialogueChoices[1] = createPlaneTextResult;
        main.event.ik.command.IkScriptCommand.ShowContextMenuWithTag(dialogueChoices, 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "lose", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_21", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot10, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot12, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_22", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot9, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_23", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_24", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var sceneVector31:Dynamic = lua.Table.create([7.92, 1.48, 6.75]);
        var sceneVector32:Dynamic = lua.Table.create([-15.47, -127.06, -0.0]);
        var cameraEase13:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector31, sceneVector32, 40.0, 0, cameraEase13);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_25", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "battle", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_26", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot9);
        main.event.ik.command.IkScriptCommand.CreateRotomPhone(this.slot9);
        main.event.ik.command.IkScriptCommand.SD6D113514F022E54(this.slot9);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(this.slot9);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(this.slot9);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot12, 25);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot12, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot12, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot12, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_27", "main_06_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var sceneVector33:Dynamic = lua.Table.create([10.68, 1.54, 8.24]);
        var sceneVector34:Dynamic = lua.Table.create([-8.97, 56.01, 0.0]);
        var cameraEase14:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector33, sceneVector34, 40.0, 0, cameraEase14);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "battle", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_28", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var sceneVector35:Dynamic = lua.Table.create([10.56, 1.54, 8.38]);
        var sceneVector36:Dynamic = lua.Table.create([-6.64, 52.79, 0.0]);
        var cameraEase15:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, sceneVector35, sceneVector36, 40.0, 0, cameraEase15);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_0020_talk_29", "main_06_01", this.slot11, null, null, (function():Dynamic {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(scenario[11], 32, null, 1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[11], "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario[8], scenario[11]);
            untyped (cast scenario : Dynamic).F32FAD7D4DF3ACA95(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[10], scenario[11], "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario[10], scenario[11]);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var sceneVector37:Dynamic = lua.Table.create([-1.84, 2.18, -5.52]);
        var sceneVector38:Dynamic = lua.Table.create([-3.85, 31.65, 0.0]);
        var cameraEase16:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector37, sceneVector38, 40.0, 0, cameraEase16);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot11, 32);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_30", "main_06_01", this.slot11);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.slot11);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_31", "main_06_01", this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var sceneVector39:Dynamic = lua.Table.create([7.84, 1.67, 2.61]);
        var sceneVector40:Dynamic = lua.Table.create([-5.12, 170.76, 0.0]);
        var cameraEase17:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector39, sceneVector40, 40.0, 0, cameraEase17);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "normal", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_32", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone(this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot10, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_41", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_0020_talk_33", "main_06_01", this.slot10, null, null, (function():Dynamic {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[10], scenario[8], "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario[10], scenario[8]);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[10], "sad2", "npc_main_friend_f");
            untyped (cast scenario : Dynamic).F32FAD7D4DF3ACA95(0.7);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[10], "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[11], scenario[10], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_34", "main_06_01", this.slot10);
        var menuSelection2:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m06_0020_select_05", "msg_Ev_m06_0020_select_06"]), 0, true, false);
        if ((0 == menuSelection2)) {
            main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "smile", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_35", "main_06_01", this.slot10);
        } else {
            if ((1 == menuSelection2)) {
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "anger", "npc_main_friend_f");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 19);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_36", "main_06_01", this.slot10);
            } else { };
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot9, "head");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "serious", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_37", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "surprise2", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_38", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot10);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot10, -0.04, -0.0, 6.95, 0.5);
        this.TimeWait(1.5);
        var sceneVector41:Dynamic = lua.Table.create([6.62, 1.71, 3.3]);
        var sceneVector42:Dynamic = lua.Table.create([-5.59, -152.44, 0.01]);
        var cameraEase18:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector41, sceneVector42, 40.0, 0, cameraEase18);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var sceneVector43:Dynamic = lua.Table.create([6.77, 1.71, 3.22]);
        var sceneVector44:Dynamic = lua.Table.create([-5.59, -152.44, 0.01]);
        var cameraEase19:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, sceneVector43, sceneVector44, 40.0, 0, cameraEase19);
        this.TimeWait(0.5);
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T0");
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_CL");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot9, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_39", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var sceneVector45:Dynamic = lua.Table.create([-1.93, 2.18, -5.5]);
        var sceneVector46:Dynamic = lua.Table.create([-3.85, 29.16, -0.0]);
        var cameraEase20:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector45, sceneVector46, 40.0, 0, cameraEase20);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot11, 32);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_0020_talk_40", "main_06_01", this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("main_06_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_SUS");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T1000");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T1000");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_PUNCH_BEFORE");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_ENV_EV_M05_2010_BEFORE");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_hotel_manager", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot13, true);
    }
}
