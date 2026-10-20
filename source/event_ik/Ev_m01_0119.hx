package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C6415F973C47EF8C2")
@:expose("C6415F973C47EF8C2")
class Ev_m01_0119 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_RIV:Dynamic;

    @:abiSlot(10)
    public var slot10:Dynamic;

    public function new()
    {
        untyped (this)[10] = "npc_main01_0003";
        untyped (this)[9] = "npc_main_rival_m";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", this.slot10]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_RECOVERY");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot10);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -703.8, 0.01, -870.15, 156.304);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, -702.05, 0.04, -871.7, -42.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, -706.73, 0, -866.99, 136.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_PLY, "head");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-702.91, 1.23, -870.22]), lua.Table.create([-3.84, 92.76, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-702.91, 1.41, -870.22]), lua.Table.create([-3.84, 92.76, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 491);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "sad", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-703.73, 1.34, -867.93]), lua.Table.create([-7.15, -12.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(1, this.Get_InitSelectPokemon(0));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "serious", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0079_talk_01", "main_01_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-702.2, 1.19, -870.57]), lua.Table.create([-7.76, 116.0, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-702.2, 1.48, -870.57]), lua.Table.create([-7.76, 116.0, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.slot10);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_RIV, this.slot10);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, -706.92, 0.05, -873.07, 45.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
