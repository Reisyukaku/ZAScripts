package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C937FD4B7C7DE3975")
@:expose("C937FD4B7C7DE3975")
class Ev_m09_2000 extends BaseMainScenario
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
        this.slot13 = "dyn_gabu";
        this.slot12 = "dyn_pijo";
        this.slot11 = "dyn_garu";
        this.slot10 = "dyn_muku";
        this.slot9 = "dyn_siro";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_ju_boss", "npc_main_ju_leader"]);
        return null;
    }

    @:hashAbi("F3250254222F75035")
    public override function OnEnd():Dynamic
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-571.3), 0.01, (-654.69), (-4.74));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        return untyped main.event.ik.base.BaseMainScenario.prototype.F3250254222F75035(this);
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M09_BOUSOU_AURA_EVENT");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot9, lua.Table.create([(-579.19), 0.01, (-642.86)]), (-12.49), "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot10, lua.Table.create([(-578.01), 0.0, (-641.95)]), (-2.53), "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot11, lua.Table.create([(-580.75), 0.0, (-631.02)]), 160.63, 115, 1, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot12, lua.Table.create([(-578.52), 0.01, (-633.23)]), 173.31, 18, 1, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot13, lua.Table.create([(-582.08), 0.01, (-635.0)]), 134.16, 445, 1, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("main_M9_GABURIASU", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("main_M9_PIZYOTTO", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("main_M9_GARUURA", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot11, false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot9, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot9, 491);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot10, 491);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-576.89), 0.01, (-651.59), (-12.49));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.AddBousouAuraTag(this.slot11);
        main.event.ik.command.IkScriptCommand.AddBousouAuraTag(this.slot12);
        main.event.ik.command.IkScriptCommand.AddBousouAuraTag(this.slot13);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-580.65), 2.03, (-647.41)]), lua.Table.create([(-11.12), (-168.77), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-580.57), 1.93, (-649.4)]), lua.Table.create([(-11.11), (-168.77), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot8, (-578.15), 0.01, (-645.02), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 1);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.slot9, this.slot8);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot10, (-150.08));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2000_talk_01", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-578.6), 1.12, (-645.4)]), lua.Table.create([7.76, 179.33, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m09_2000_talk_02", "main_09_01", this.slot9, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(0.5);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_2000_MUSCLE_WHOOSH01");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 333);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot9, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2000_talk_03", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2000_talk_04", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2000_talk_05", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot12, "head");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-581.56), 1.29, (-638.98)]), lua.Table.create([(-6.88), (-167.84), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m09_2000_talk_06", "main_09_01", this.slot9, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[11], 40);
            scenario.F32FAD7D4DF3ACA95(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[12], 40);
            scenario.F32FAD7D4DF3ACA95(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[13], 40);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-579.01), 1.38, (-646.56)]), lua.Table.create([(-3.99), (-166.63), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2000_talk_07", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2000_talk_08", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot9);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Pos(this.slot9, lua.Table.create([(-580.16), 1.38, (-634.06)]));
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot10);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Pos(this.slot10, lua.Table.create([(-580.16), 1.38, (-634.06)]));
        this.TimeWait(1.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M09_BOUSOU_AURA_BATTLE");
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
    }
}
