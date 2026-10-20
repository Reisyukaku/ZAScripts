package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C2AF476121C691109")
@:expose("C2AF476121C691109")
class Ev_m10_9300 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_GURI:Dynamic;

    @:abiSlot(10)
    public var CHR_GURIS:Dynamic;

    public function new()
    {
        untyped (this)[10] = "npc_main_nu_boss_f";
        untyped (this)[9] = "npc_main_nu_boss_m";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_nu_boss_m", "npc_main_nu_boss_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        var textResourcePath:String = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/cafe");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURIS, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -544.05, 0.01, -584.59, 136.21);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURI, -539.61, 0.65, -586.89, -67.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURIS, -542.37, 0.0, -587.15, 9.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PLY, -542.33, 0.01, -586.01, 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-543.87, 1.93, -584.33]), lua.Table.create([1.31, -44.53, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-543.87, 1.15, -584.33]), lua.Table.create([1.31, -44.54, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.CHR_PLY, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURIS, 1);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURI, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_GURIS, "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "rejoice_big_mc", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9300_talk_01", "main_10_01", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-538.65, 2.6, -586.47]), lua.Table.create([-23.4, 79.84, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURI, this.CHR_GURIS, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9300_talk_02", "main_10_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "rejoice_small_mc", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.CHR_GURI, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9300_talk_03", "main_10_01", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURI, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-541.55, 1.32, -585.25]), lua.Table.create([-0.4, 35.92, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.SAF4C948ABBCA57BD();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9300_talk_04", "main_10_01", this.CHR_GURIS);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m10_9300_select_01", "msg_Ev_m10_9300_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_GURI, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-540.4, 2.2, -586.4]), lua.Table.create([-0.47, -51.54, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-540.3, 2.21, -586.45]), lua.Table.create([-0.47, -51.54, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "serious", this.CHR_GURI);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "normal", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9300_talk_05", "main_10_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-542.7, 1.42, -586.37]), lua.Table.create([6.59, -29.05, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "normal", this.CHR_GURI);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURIS, 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9300_talk_06", "main_10_01", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "rejoice_small_mc", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURIS, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9300_talk_07", "main_10_01", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-543.92, 1.19, -586.37]), lua.Table.create([6.59, -82.66, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURI, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9300_talk_08", "main_10_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9300_talk_09", "main_10_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
