package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CB927BE5FEA674E5A")
@:expose("CB927BE5FEA674E5A")
class Ev_m05_2650 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_MACHI:Dynamic;

    @:abiSlot(10)
    public var CHR_MUKU:Dynamic;

    public function new()
    {
        this.CHR_MUKU = "dyn_muku";
        this.CHR_MACHI = "dyn_machi";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_detective", "npc_main_ju_leader"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Ev_m05_2650 = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MACHI, lua.Table.create([(-271.63), (-5.52), (-875.02)]), 146.26, "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MUKU, lua.Table.create([(-271.63), (-5.52), (-875.02)]), 146.26, "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_PLY, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_MUKU, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_MACHI, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-273.6), (-5.5), (-873.05), 146.26);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MUKU, (-272.88), (-5.53), (-873.19), 150.76);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MACHI, (-271.95), (-5.53), (-874.93), 157.76);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-275.29), 3.04, (-884.88)]), lua.Table.create([(-18.48), (-155.89), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-275.29), (-0.92), (-884.88)]), lua.Table.create([(-18.48), (-155.89), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_IRON_GATE_CL");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_0S");
        var detectiveMovement = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_MACHI, (-270.67), (-5.54), (-877.14), 0.5);
        this.TimeWait(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_MUKU, (-271.44), (-5.53), (-875.39), 0.5);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PLY, (-272.15), (-5.51), (-875.41), 0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0, true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(detectiveMovement);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MACHI, 2);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-270.67), (-4.13), (-878.79)]), lua.Table.create([(-5.61), 169.52, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MUKU, this.CHR_MACHI, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_MACHI, "head");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_2650_talk_01", "main_05_01", this.CHR_MACHI, null, null, (function():Dynamic
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario.CHR_MACHI, "lose", "npc_main_detective");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario.CHR_MACHI, 15);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MUKU, 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2650_talk_02", "main_05_01", this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MACHI, this.CHR_MUKU, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_MACHI, (-40.0));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-271.41), (-4.16), (-876.44)]), lua.Table.create([(-1.16), (-53.31), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MACHI, "normal", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MACHI, 1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MACHI, "rejoice_small", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2650_talk_03", "main_05_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_MACHI, 32, null, 3.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2650_talk_04", "main_05_01", this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MACHI, this.CHR_PLY, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-272.81), (-4.12), (-875.0)]), lua.Table.create([(-6.61), (-57.21), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MACHI, "lose", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MACHI, 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2650_talk_05", "main_05_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-272.39), (-3.97), (-876.52)]), lua.Table.create([(-13.77), (-149.71), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MUKU, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_MUKU, this.CHR_PLY);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_MUKU, "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819(this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_MUKU, 32, null, 5.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2650_talk_06", "main_05_01", this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_PLY, true);
    }
}
