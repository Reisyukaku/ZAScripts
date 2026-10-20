package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C7F9709BF50922492")
@:expose("C7F9709BF50922492")
class Ev_m03_3000 extends BaseMainScenario
{
    @:abiSlot(8)
    public var FLD_ZIGA:Dynamic;

    @:abiSlot(9)
    public var CHR_MACHI:Dynamic;

    @:abiSlot(10)
    public var CHR_AZ:Dynamic;

    @:abiSlot(11)
    public var slot11:Dynamic;

    @:abiSlot(12)
    public var slot12:Dynamic;

    @:abiSlot(13)
    public var slot13:Dynamic;

    @:abiSlot(14)
    public var CHR_PLY:Dynamic;

    @:abiSlot(15)
    public var slot15:Dynamic;

    @:abiSlot(16)
    public var slot16:Dynamic;

    public function new()
    {
        untyped (this)[16] = "ob0004_00_normal_07";
        untyped (this)[15] = "main_m3_mega_abu";
        untyped (this)[14] = "npc_pokemon_zygarde";
        untyped (this)[13] = "dyn_ruka";
        untyped (this)[12] = "dyn_ziga";
        untyped (this)[11] = "dyn_abu";
        untyped (this)[10] = "dyn_az";
        untyped (this)[9] = "dyn_machi";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_detective", "npc_main_hotel_manager", this.slot11, this.slot12, this.slot13]);
        return null;
    }

    @:hashAbi("F3250254222F75035")
    public override function OnEnd():Dynamic
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(untyped (this)[8], -818.52, 4.82, -549.18, 90.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        return untyped (main.event.ik.base.BaseMainScenario.prototype)["F3250254222F75035"](this);
        
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_3S_LOW");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_M_BOSS_AURA_TYPE_EVENT");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_SE_AURA_OFF");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T3000");
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.FLD_ZIGA, "normal", this.FLD_ZIGA);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.FLD_ZIGA, 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_PLY, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_PLY, false);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.FLD_ZIGA);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MACHI, lua.Table.create([-807.54, 19.57, -543.78]), 180.0, "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_AZ, lua.Table.create([-807.54, 19.57, -543.78]), 180.0, "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot12, lua.Table.create([-805.76, 5.99, -531.84]), -166.0, 718, 1, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot13, lua.Table.create([-811.26, 6.01, -535.14]), -166.0, 448, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot11, lua.Table.create([-811.02, 6.01, -535.21]), -166.0, 359, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.CreateRotomPhoneLooseWait(this.CHR_MACHI, "ob0004_00_normal_07");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.FLD_ZIGA, -820.65, 6.13, -541.21, 32.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, -820.77, 6.14, -534.99, 120.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MACHI, -801.64, 6.0, -528.17, 146.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_AZ, -814.64, 6.03, -536.13, 61.71);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot13, -801.64, 6.0, -528.17, 146.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, -801.15, 21.0, -550.18, -125.0);
        main.event.ik.command.IkScriptCommand.AddTagCommon(this.slot11, "Bousou_on_field");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var cameraPosition:Dynamic = lua.Table.create([-814.74, 20.7, -540.95]);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot12, cameraPosition);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_MACHI, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_AZ, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot13, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot11, false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-821.79, 7.13, -538.21]), lua.Table.create([-8.18, -159.7, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        untyped this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-821.88, 7.56, -543.13]), lua.Table.create([-8.18, -159.7, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.FLD_ZIGA, cameraPosition);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.FLD_ZIGA, 90.0);
        untyped this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-821.84, 5.81, -541.63]), lua.Table.create([59.44, -92.21, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-821.67, 6.09, -541.62]), lua.Table.create([59.44, -92.21, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot12);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, -820.77, 6.14, -534.99, 171.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("dyn_ziga", 10);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m03_3000_talk_03", "main_03_01", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.FLD_ZIGA, this.slot12, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.FLD_ZIGA, 2.5);
        untyped this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-821.64, 7.39, -533.61]), lua.Table.create([1.51, -19.35, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-821.64, 6.69, -533.61]), lua.Table.create([1.51, -19.35, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.FLD_ZIGA);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-821.13, 7.25, -538.66]), lua.Table.create([-11.67, -173.17, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot12, 21);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-821.07, 7.22, -538.19]), lua.Table.create([-11.67, -173.17, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.FLD_ZIGA, lua.Table.create([-820.57, 6.13, -538.01]));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.6, lua.Table.create([-821.14, 7.33, -538.74]), lua.Table.create([-11.66, -173.17, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(0, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot12, -820.96, 6.13, -539.98, 2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.FLD_ZIGA, -820.61, 6.13, -540.61, 2.5);
        untyped this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.FLD_ZIGA, 21);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot12, false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-820.69, 7.03, -535.91]), lua.Table.create([-0.89, 0.84, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M03_3000_PM0718_BEAST_S_WALK");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([-820.66, 7.31, -539.73]), lua.Table.create([-0.89, 0.84, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M03_3000_PL_FOLEY_LANDING_STAND_UP");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-820.66, 7.31, -539.73]), lua.Table.create([-0.89, 0.84, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-820.66, 7.31, -539.73]), lua.Table.create([-12.49, 14.9, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-820.66, 7.31, -539.73]), lua.Table.create([68.77, -70.65, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        untyped this.TimeWait(0.25);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.6, lua.Table.create([-818.08, 14.35, -540.64]), lua.Table.create([68.77, -70.65, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M03_3000_CAMERAWHOOSH16");
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.5, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.FLD_ZIGA, -807.92, 20.45, -553.93, 18.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, -807.81, 20.44, -551.34, 68.7);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.FLD_ZIGA);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot12, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot12);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MACHI, -810.1, 6.05, -533.19, 180.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 52);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot11, true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-807.53, 21.85, -553.21]), lua.Table.create([-3.03, 32.85, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M03_3000_PL_LANDING");
        untyped this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.Fade_In("White", 1.5, true);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.FLD_ZIGA, "normal", this.FLD_ZIGA);
        untyped this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.FLD_ZIGA);
        untyped this.TimeWait(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.FLD_ZIGA, "surprise2", this.FLD_ZIGA);
        untyped this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.FLD_ZIGA, 27);
        untyped this.TimeWait(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T500");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-805.63, 23.84, -545.69]), lua.Table.create([-20.96, 15.56, 0.0]), 50.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(10.0, lua.Table.create([-811.66, 23.74, -546.18]), lua.Table.create([-20.33, -25.51, 0.0]), 50.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped this.TimeWait(3.5);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.FLD_ZIGA);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-806.55, 21.07, -549.88]), lua.Table.create([4.14, 31.92, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.FLD_ZIGA, this.slot12, "head");
        untyped this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m03_3000_talk_06", "main_03_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.FLD_ZIGA, "surprise_mc", this.FLD_ZIGA);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.FLD_ZIGA, this.slot11, "head");
        untyped this.TimeWait(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.FLD_ZIGA, "serious", this.FLD_ZIGA);
        untyped this.TimeWait(0.5);
        var slot12Turn:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot12, -62.3);
        var zigaLeaveEffEffectKey:Dynamic = "ziga_leave_eff";
        main.event.ik.command.IkScriptCommand.CreateLocaterEffect("field/event/z_move/z_move_disapp", zigaLeaveEffEffectKey, this.slot12, "event_script");
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(zigaLeaveEffEffectKey);
        }));
        this.TimeWait(0.8);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(slot12Turn);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot12, -809.27, 20.44, -550.43, 2.0);
        this.TimeWait(0.1);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_0718_MOVE_FAST");
        main.event.ik.command.IkScriptCommand.PlayEffect(zigaLeaveEffEffectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot12, false);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.FLD_ZIGA, 68.7);
        this.TimeWait(0.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_PLAY");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_SE_AURA_ON");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-810.89, 21.74, -554.29]), lua.Table.create([-6.94, -112.67, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-810.27, 21.66, -554.03]), lua.Table.create([-6.94, -112.67, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(0, Int))));
        this.TimeWait(2.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-803.36, 21.09, -551.12]), lua.Table.create([-6.94, -112.67, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-802.72, 21.0, -550.85]), lua.Table.create([-6.94, -112.67, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_MACHI, true);
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("dyn_abu", 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3000_talk_01", "main_03_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-815.8, 23.07, -540.58]), lua.Table.create([-59.61, -142.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-815.64, 22.63, -540.38]), lua.Table.create([-59.61, -142.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MACHI, this.FLD_ZIGA, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.FLD_ZIGA, this.CHR_MACHI, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m03_3000_talk_02", "main_03_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.FLD_ZIGA);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-811.22, 8.32, -535.15]), lua.Table.create([-29.87, -151.39, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.CreateRotomPhone(this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.LookAtRotomPhone(this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3000_sys_03", "main_03_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3000_talk_04", "main_03_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone(this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MACHI, 27);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway(this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3000_talk_15", "main_03_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_AZ, -814.64, 6.03, -536.13, 61.71);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot13, -813.23, 5.99, -536.35, 49.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_AZ, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot13, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_AZ, this.CHR_MACHI, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot13, this.CHR_MACHI, "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_AZ, -812.63, 6.03, -535.06, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot13, -811.57, 5.99, -535.46, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-811.39, 7.39, -532.63]), lua.Table.create([-2.06, 25.88, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-809.62, 7.39, -531.51]), lua.Table.create([-2.06, 25.88, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_MACHI, this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3000_talk_17", "main_03_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3000_talk_18", "main_03_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-811.5, 8.15, -533.69]), lua.Table.create([-2.06, 33.58, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3000_talk_25", "main_03_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3000_talk_26", "main_03_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-811.22, 6.45, -530.75]), lua.Table.create([7.84, 11.49, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_AZ, this.slot13, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot13, this.CHR_AZ, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.slot13, this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3000_talk_19", "main_03_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot13, 18);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m03_3000_talk_23", "main_03_01", null, null, null, (function():Dynamic
        {
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot13, this.FLD_ZIGA, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot13, 130.0);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_AZ, this.FLD_ZIGA, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_AZ, 150.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m03_3000_talk_20", "main_03_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot13, 200);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M03_3000_JUMP");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_SE_AURA_OFF");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_MACHI, false);
        this.TimeWait(0.6);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.8, lua.Table.create([-809.02, 6.96, -534.83]), lua.Table.create([76.21, 17.24, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        this.TimeWait(0.4);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M03_3000_CAMERAWHOOSH16");
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 1.0, true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-811.56, 21.31, -553.51]), lua.Table.create([-3.16, -95.55, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.FLD_ZIGA, this.slot13, "head");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot13);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot13, -806.59, 20.43, -552.89, -115.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot13, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot13, 196);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_SE_AURA_ON");
        main.event.ik.command.IkScriptCommand.Fade_In("White", 1.0, true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot13, -130.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.FLD_ZIGA, 46.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_MACHI, true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-807.47, 21.55, -552.46]), lua.Table.create([-14.43, -62.67, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot13);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot13, 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m03_3000_talk_21", "main_03_01", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-807.69, 21.93, -552.69]), lua.Table.create([-9.2, 6.41, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.FLD_ZIGA, 74);
        this.TimeWait(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_ITEM_GET_KEY");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m03_3000_talk_27", "main_03_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-813.24, 8.89, -537.16]), lua.Table.create([-13.18, -153.32, -0.0]), 50.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-813.24, 8.62, -537.16]), lua.Table.create([-13.18, -153.32, -0.0]), 50.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MACHI, this.FLD_ZIGA, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_MACHI, 174.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.FLD_ZIGA);
        main.event.ik.command.IkScriptCommand.SetMegaRingTag();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.FLD_ZIGA, 202);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m03_3000_talk_22", "main_03_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-812.35, 7.99, -536.51]), lua.Table.create([15.77, 174.52, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m03_3000_talk_05", "main_03_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-806.57, 22.02, -553.52]), lua.Table.create([-16.66, 80.1, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-806.77, 21.96, -553.56]), lua.Table.create([-16.66, 80.1, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-809.39, 22.12, -553.62]), lua.Table.create([-12.87, -97.53, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-809.39, 21.9, -553.62]), lua.Table.create([-12.87, -97.53, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot13, this.slot11, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot13, 42.0);
        this.TimeWait(0.4);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-810.65, 20.89, -552.75]), lua.Table.create([5.61, -91.3, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-810.62, 20.89, -553.19]), lua.Table.create([5.61, -96.31, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot11);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.FLD_ZIGA, this.slot11, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m03_3000_talk_16", "main_03_01", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.BossAdventDemoPlay(this.slot11);
        main.event.ik.command.IkScriptCommand.RemoveTagCommon(this.slot11, "Bousou_on_field");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
    }
}
