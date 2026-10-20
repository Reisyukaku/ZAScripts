package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CF61861119B62502F")
@:expose("CF61861119B62502F")
class Ev_m07_5401 extends BaseMainScenario
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
        this.slot14 = "npc_main_pa_boss";
        this.slot13 = "npc_pokemon_zygarde";
        this.slot12 = "dyn_ziga";
        this.slot11 = "dyn_f";
        this.slot10 = "dyn_hal";
        this.slot9 = "dyn_yuka";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_pa_boss", "npc_main_pa_leader", "npc_main_ga_boss", "npc_main_ga_leader", "npc_main_ju_boss", "npc_main_ju_leader", "npc_main_co_boss", "npc_main_co_leader", "npc_main_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Ev_m07_5401 = this;
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_f", false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot9, lua.Table.create([21.06, 0.03, (-12.14)]), (-90.0), "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot10, lua.Table.create([21.89, 0.02, (-11.16)]), (-90.0), "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot12, lua.Table.create([15.78, 0.03, (-10.13)]), 180.0, 718, 1, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot12, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([19.91, 2.39, (-12.16)]), lua.Table.create([7.79, (-90.34), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "normal", "npc_main_pa_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "normal", "npc_main_pa_leader");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_0S");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0, true);
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([19.91, 1.17, (-12.16)]), lua.Table.create([7.79, (-90.34), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m07_5400_talk_32", "main_07_01", this.slot9, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario.slot9, 14);
            scenario.TimeWait(1.0);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH13");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([11.31, 0.2, (-12.06)]), lua.Table.create([7.34, (-90.33), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            return null;
        }));
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot13, true);
    }
}
