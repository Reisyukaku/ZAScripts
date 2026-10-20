package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C968C045FD6CFFD29")
@:expose("C968C045FD6CFFD29")
class Ev_m05_2220 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_pokemon_cleffy"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_INIT");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_detective", lua.Table.create([(-5.35), 3.02, (-88.84)]), (-103.69), "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ju_boss", lua.Table.create([(-5.04), 3.01, (-89.97)]), (-64.19), "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-6.85), 3.03, (-89.54), 95.78);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-7.97), 4.41, (-88.36)]), lua.Table.create([(-4.07), (-61.2), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2220_talk_01", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_ju_boss");
        var animationHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2220_talk_04", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2220_talk_05", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-6.23), 4.43, (-88.86)]), lua.Table.create([(-1.09), (-91.07), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2220_talk_06", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M24DB_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
