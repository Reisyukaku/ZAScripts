package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C968F125FD6D24ACA")
@:expose("C968F125FD6D24ACA")
class Ev_m05_2218 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:String = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_INIT");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_cleffy", false);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_KUREHFI", lua.Table.create([(-13.68), 3.69, (-90.04)]), 65.61, 707, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_detective", lua.Table.create([(-3.14), 3.01, (-90.6)]), (-82.5), "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ju_boss", lua.Table.create([(-2.45), 3.01, (-91.67)]), (-70.0), "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "surprise");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-11.8), 3.02, (-89.3), (-110.6));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-12.92), 3.93, (-90.15)]), lua.Table.create([22.22, 96.14, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.8, lua.Table.create([(-12.92), 3.65, (-90.15)]), lua.Table.create([22.22, 96.14, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_KUREHFI", 53);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2218_talk_01", "main_05_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-4.69), 4.03, (-89.7)]), lua.Table.create([7.7, (-58.08), 0.01]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([(-3.97), 4.26, (-90.15)]), lua.Table.create([7.7, (-58.08), 0.01]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "surprise_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 21);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m05_2218_talk_02", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_CameraShake();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
