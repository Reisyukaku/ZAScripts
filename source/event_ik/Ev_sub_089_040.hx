package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CE777020C95CE8C3F")
@:expose("CE777020C95CE8C3F")
class Ev_sub_089_040 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-206.09, 1.64, -861.9]), lua.Table.create([-14.71, 55.95, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -205.33, 0.11, -861.87, -62.03);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub089_001", -206.53, 0.09, -861.37, 126.29);
        var selectPokemon:Dynamic = main.event.ik.command.IkScriptCommand.SEF7FC0E88D664BB4();
        if (((null == selectPokemon))) {
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_089_001_talk_04", "sub_089", "npc_sub089_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        } else {
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon("HURABEBE_ORANGE", lua.Table.create([-206.57, 1.33, -862.24]), 44.1, 669, 2, untyped (cast selectPokemon : Dynamic).fB31DF589(), null, 0, true, untyped (cast selectPokemon : Dynamic).fA284DF88(), untyped (cast selectPokemon : Dynamic).f1E57BACE(), main.event.ik.command.IkScriptCommand.IsOybnForSingleSelectPokemon(), false);
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "HURABEBE_ORANGE", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub089_001", "HURABEBE_ORANGE", "head");
            var simpleParam:Dynamic = cppbindings.CB66BF4D3.f89B3EEBF(selectPokemon);
            var getAppearanceState:Dynamic = untyped (cast simpleParam : Dynamic).fCFD269DB;
            var getAppearanceStateResult:Dynamic = getAppearanceState(simpleParam);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            if (lua.abi.Host.truthy(getAppearanceStateResult)) {
                var cameraVector:Dynamic = lua.Table.create([-205.73, 1.98, -861.66]);
                var cameraVector2:Dynamic = lua.Table.create([-14.71, 55.95, 0.0]);
                var cameraEase:Dynamic = (main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, StdTypes.Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector, cameraVector2, 40.0, 0, cameraEase);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            } else {
                var cameraVector3:Dynamic = lua.Table.create([-206.09, 1.64, -861.9]);
                var cameraVector4:Dynamic = lua.Table.create([-14.71, 55.95, 0.0]);
                var cameraEase2:Dynamic = (main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, StdTypes.Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector3, cameraVector4, 40.0, 0, cameraEase2);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            };
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("HURABEBE_ORANGE", 20);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_089_010_talk_31", "sub_089");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
            if (lua.abi.Host.truthy(getAppearanceStateResult)) {
                var fObjSetPosAng:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
                fObjSetPosAng("HURABEBE_ORANGE", -206.44, 1.13, -862.17, 36.88);
            } else {
                var fObjSetPosAng2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
                fObjSetPosAng2("HURABEBE_ORANGE", -206.44, 1.33, -862.17, 42.9);
            };
            var cameraEase3:Dynamic = (main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, StdTypes.Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-204.78, 1.49, -863.22]), lua.Table.create([-4.19, 142.69, 0.0]), 40.0, 0, cameraEase3);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub089_001", 20);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub089_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub089_001", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_089_010_talk_32", "sub_089", "npc_sub089_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_ITEM_GET_KEY");
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_089_010_sys_03", "sub_089");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            cppbindings.C5090F7B8.f92941AC0("flag_Ev_sub_089_010_orange", true);
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub089_001", -206.7, 0.11, -861.36, 133.77);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -205.96, 0.11, -862.25, -30.74);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        };
    }
}
