package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C33E720C01E7024C6")
@:expose("C33E720C01E7024C6")
class Ev_m09_1000 extends BaseMainScenario
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

    @:abiSlot(14)
    public var slot14:Dynamic;

    public function new()
    {
        untyped (this)[14] = "npc_pokemon_floette";
        untyped (this)[13] = "dyn_hura";
        untyped (this)[12] = "dyn_mas";
        untyped (this)[11] = "dyn_deu";
        untyped (this)[10] = "dyn_pyu";
        untyped (this)[9] = "npc_main_rival_m";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_friend_f", "npc_main_friend_m", "npc_main_secretary"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot14, false);
        var sceneVector:Dynamic = lua.Table.create([-496.9, 0.01, -579.3]);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot11, sceneVector, 0.0, "npc_main_friend_f");
        var sceneVector2:Dynamic = lua.Table.create([-496.9, 0.01, -579.3]);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot10, sceneVector2, 0.0, "npc_main_friend_m");
        var sceneVector3:Dynamic = lua.Table.create([-496.9, 0.01, -579.3]);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot12, sceneVector3, 0.0, "npc_main_secretary");
        var sceneVector4:Dynamic = lua.Table.create([-496.9, 0.01, -579.3]);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot13, sceneVector4, 0.0, 670, 5, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.CreateRotomPhoneLooseWait(this.slot9, "ob0004_00_normal_01");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot9, "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot8, "serious", this.slot8);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "serious", this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, -496.9, 0.01, -579.3, -70.09);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, -498.74, 0.0, -579.31, 95.48);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, -499.6, 0.01, -573.75, 162.91);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, -495.96, 0.01, -573.13, -165.09);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, -497.85, 0.0, -575.04, 178.18);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot13, -496.9, 1.14, -573.2, -171.09);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var sceneVector5:Dynamic = lua.Table.create([-497.81, 1.19, -580.26]);
        var sceneVector6:Dynamic = lua.Table.create([-2.93, 179.69, 0.0]);
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector5, sceneVector6, 40.0, 0, cameraEase);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var sceneVector7:Dynamic = lua.Table.create([-497.8, 1.27, -581.83]);
        var sceneVector8:Dynamic = lua.Table.create([-2.93, 179.69, 0.0]);
        var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, sceneVector7, sceneVector8, 40.0, 0, cameraEase2, (null : Dynamic), (null : Dynamic), (null : Dynamic), (null : Dynamic));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(1.8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1000_talk_01", "main_09_01", this.slot9);
        var menuLabels:Dynamic = (["msg_Ev_m09_1000_select_01", "msg_Ev_m09_1000_select_02"]);
        var menuSelection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, (0 : Dynamic), (true : Dynamic), (false : Dynamic));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (0 == menuSelection)
        {
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_M24DB_T3000");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_EXC_BGM_05_SUS");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 18);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot12, "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1000_talk_03", "main_09_01", this.slot9);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot12, 18);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.SF32D79FFE5D79967(this.slot8, true);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot9, "head");
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot8, -497.49, 0.01, -579.33, 0.5, 0.3, 1, 15);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot9, -498.14, 0.0, -579.31, 0.5, 0.3, 1, 15);
            var sceneVector9:Dynamic = lua.Table.create([-497.81, 1.36, -580.54]);
            var sceneVector10:Dynamic = lua.Table.create([-2.93, 179.69, -0.0]);
            var cameraEase3:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, sceneVector9, sceneVector10, 40.0, 0, cameraEase3);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.PlayAdventRotomSequence(this.slot8, this.slot9, "ob0004_00_normal_01", true);
            var sceneVector11:Dynamic = lua.Table.create([-498.7, 1.48, -579.81]);
            var sceneVector12:Dynamic = lua.Table.create([-7.25, -122.15, -0.0]);
            var cameraEase4:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector11, sceneVector12, 40.0, 0, cameraEase4);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.SF32D79FFE5D79967(this.slot8, false);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1000_talk_15", "main_09_01", this.slot9);
            var dialogueChoices:Dynamic = [null, null, null];
            untyped dialogueChoices[0] = main.event.ik.command.IkScriptCommand.CreatePlaneText("msg_Ev_m09_1000_select_03");
            var createPlaneTextResult:Dynamic = main.event.ik.command.IkScriptCommand.CreatePlaneText("msg_Ev_m09_1000_select_04");
            var createRivalTextResult:Dynamic = main.event.ik.command.IkScriptCommand.CreateRivalText("msg_Ev_m09_1000_select_05", null, 1);
            untyped dialogueChoices[1] = createPlaneTextResult;
            untyped dialogueChoices[2] = createRivalTextResult;
            main.event.ik.command.IkScriptCommand.ShowContextMenuWithTag(dialogueChoices, 0, false, false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var camera_Move_Angle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var sceneVector14:Dynamic = lua.Table.create([-497.05, 1.44, -579.95]);
            var sceneVector15:Dynamic = lua.Table.create([-5.34, 130.56, 0.0]);
            var cameraEase5:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            camera_Move_Angle((0.0 : Dynamic), sceneVector14, sceneVector15, (40.0 : Dynamic), (0 : Dynamic), cameraEase5, (null : Dynamic), (null : Dynamic), (null : Dynamic));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1000_talk_09", "main_09_01", this.slot9);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_02");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            main.event.ik.command.IkScriptCommand.S5947B527097768D0(4);
        }
        else
        {
            if (1 == menuSelection)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1000_talk_02", "main_09_01", this.slot9);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
            }
            else
            {
            };
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot14, true);
        untyped this.m_resultParam = menuSelection;
    }
}
