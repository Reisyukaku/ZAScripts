package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C9FDCBC1E46784E65")
@:expose("C9FDCBC1E46784E65")
class Ev_m06_1310 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_DEU:Dynamic;

    @:abiSlot(10)
    public var CHR_MOB1:Dynamic;

    @:abiSlot(11)
    public var CHR_MOB2:Dynamic;

    public function new()
    {
        this.CHR_MOB2 = "dyn_mob2";
        this.CHR_MOB1 = "dyn_mob1";
        this.CHR_DEU = "dyn_deu";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_friend_f", "npc_co_member_m_00", "npc_co_member_f_00"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Ev_m06_1310 = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        main.event.ik.command.IkScriptCommand.WordSet_Name_Rival(1, true);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_DEU, lua.Table.create([(-326.22), 0.01, (-645.92)]), (-5.87), "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MOB1, lua.Table.create([(-326.22), 0.01, (-645.92)]), (-5.87), "npc_co_member_m_00");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MOB2, lua.Table.create([(-326.22), 0.01, (-645.92)]), (-5.87), "npc_co_member_f_00");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_MOB1, 201);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_MOB2, 201);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-325.13), 0.86, (-644.14), (-151.43));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_DEU, (-326.3), 0.54, (-644.44), (-159.92));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MOB1, (-327.89), 0.0, (-645.41), (-150.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MOB2, (-324.53), 0.0, (-646.45), (-172.5));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-327.85), 2.53, (-650.76)]), lua.Table.create([2.19, (-161.61), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-327.85), 0.94, (-650.76)]), lua.Table.create([2.19, (-161.61), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_0S");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PLY, (-326.03), 0.01, (-646.82), 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_DEU, (-327.2), 0.0, (-647.11), 0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_DEU, "sad2", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T1000");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_1310_talk_01", "main_06_01", this.CHR_DEU, null, null, (function():Dynamic
        {
            scenario.TimeWait(1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario.CHR_PLY, scenario.CHR_DEU, "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_DEU, this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1310_talk_02", "main_06_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-326.38), 1.52, (-647.55)]), lua.Table.create([(-6.53), 126.45, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819(this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_DEU, 24);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1310_talk_03", "main_06_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1310_talk_04", "main_06_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MOB1, this.CHR_DEU, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1310_talk_05", "main_06_01", this.CHR_MOB1);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_DEU, "dislike", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.CHR_MOB1, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1310_talk_06", "main_06_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_DEU);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-325.11), 1.44, (-648.32)]), lua.Table.create([(-6.58), 133.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_DEU, "serious", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1310_talk_07", "main_06_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_co_member_f_00", 201);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_co_member_m_00", 201);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S0EA2B6C4A18DBEE5("npc_co_member_f_00");
        main.event.ik.command.IkScriptCommand.S0EA2B6C4A18DBEE5("npc_co_member_m_00");
    }
}
