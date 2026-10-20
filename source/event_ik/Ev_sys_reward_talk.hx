package event_ik;

import main.event.ik.base.BaseBattleTalkEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("C9589CBB5A2708AB6")
@:expose("C9589CBB5A2708AB6")
class Ev_sys_reward_talk extends BaseBattleTalkEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_M24DB_T500");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M24DB_T500");
        switch (this.m_eventScriptParam.f73EE8FEC())
        {
            case "110":
                this.CreateBattleNpc("npc_driver_m_03");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 2);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "lose", "npc_driver_m_03");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.57, 1.27, -281.98]), lua.Table.create([14.67, -112.09, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.79, 1.27, -281.43]), lua.Table.create([14.67, -112.09, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 175);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reward_16_btl01", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            case "111":
                this.CreateBattleNpc("npc_main_nu_boss_f");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "anger", "npc_main_nu_boss_f");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.53, 1.26, -282.0]), lua.Table.create([15.73, -113.92, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.78, 1.26, -281.44]), lua.Table.create([15.73, -113.92, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 174);
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_15_btl01", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "112":
                this.CreateBattleNpc("npc_main_friend_f");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 346);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.63, 1.08, -282.24]), lua.Table.create([17.01, -114.49, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.94, 1.08, -281.57]), lua.Table.create([17.01, -114.49, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_04_btl01", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "113":
                this.CreateBattleNpc("npc_main_ga_leader");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 24);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.81, 0.72, -282.37]), lua.Table.create([16.72, -112.23, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-255.1, 0.72, -281.66]), lua.Table.create([16.72, -112.23, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_07_btl01", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "114":
                this.CreateBattleNpc("npc_schoolkids_m_03");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 2);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "confident", "npc_schoolkids_m_03");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.48, 0.76, -281.85]), lua.Table.create([16.19, -111.0, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.68, 0.76, -281.32]), lua.Table.create([16.19, -111.0, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 174);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reward_18_btl01", "reward");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            case "115":
                this.CreateBattleNpc("npc_main_ju_leader");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 20);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.46, 1.0, -282.02]), lua.Table.create([19.7, -116.35, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.74, 1.0, -281.45]), lua.Table.create([19.7, -116.35, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reward_09_btl01", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "116":
                this.CreateBattleNpc("npc_main_pa_leader");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "anger", "npc_main_pa_leader");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.87, 0.47, -282.3]), lua.Table.create([25.49, -103.68, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-255.07, 0.47, -281.48]), lua.Table.create([25.49, -103.68, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_13_btl01", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "117":
                this.CreateBattleNpc("npc_main_friend_m");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.29, 1.11, -281.88]), lua.Table.create([19.7, -119.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.54, 1.11, -281.44]), lua.Table.create([19.7, -119.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 174);
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_03_btl01", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "118":
                this.CreateBattleNpc("npc_ol_f_00");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 2);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "anger", "npc_ol_f_00");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.59, 1.1, -281.97]), lua.Table.create([21.61, -109.97, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.81, 1.1, -281.38]), lua.Table.create([21.61, -109.97, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 175);
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_17_btl01", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            case "119":
                this.CreateBattleNpc("npc_waiter_m_02");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 2);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "smile_bitter", "npc_waiter_m_02");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.53, 1.18, -282.13]), lua.Table.create([13.85, -115.37, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.84, 1.18, -281.47]), lua.Table.create([13.85, -115.37, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 174);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reward_19_btl01", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            case "120":
                this.CreateBattleNpc("npc_main_ga_boss");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "anger", "npc_main_ga_boss");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.46, 1.01, -282.03]), lua.Table.create([20.45, -115.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.73, 1.01, -281.47]), lua.Table.create([20.45, -115.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_06_btl01", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "121":
                this.CreateBattleNpc("npc_ga_member_f_03");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.43, 1.17, -282.03]), lua.Table.create([15.56, -116.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.74, 1.17, -281.4]), lua.Table.create([15.56, -116.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 346);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reward_21_btl01", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            case "122":
                this.CreateBattleNpc("npc_main_detective");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.38, 1.07, -282.0]), lua.Table.create([20.25, -118.58, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.67, 1.07, -281.47]), lua.Table.create([20.25, -118.58, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 174);
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_02_btl01", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "123":
                this.CreateBattleNpc("npc_main_co_boss");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.52, 1.14, -281.94]), lua.Table.create([17.32, -111.85, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.74, 1.14, -281.39]), lua.Table.create([17.32, -111.85, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 24);
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_10_btl01", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "124":
                this.CreateBattleNpc("npc_main_rival_m");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 2);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.36, 1.14, -281.79]), lua.Table.create([19.97, -112.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.57, 1.14, -281.31]), lua.Table.create([19.97, -112.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 174);
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_01_btl01", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "125":
                this.CreateBattleNpc("npc_main_ju_boss");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.82, 1.29, -282.43]), lua.Table.create([18.62, -110.58, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-255.15, 1.29, -281.54]), lua.Table.create([18.62, -110.58, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_08_btl01", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "126":
                this.CreateBattleNpc("npc_main_co_leader");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.53, 1.34, -282.03]), lua.Table.create([14.24, -114.98, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.79, 1.34, -281.48]), lua.Table.create([14.24, -114.98, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 346);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reward_11_btl01", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "127":
                this.CreateBattleNpc("npc_main_pa_boss");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 2);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "smile", "npc_main_pa_boss");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.53, 1.15, -282.1]), lua.Table.create([14.54, -116.13, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.84, 1.15, -281.48]), lua.Table.create([14.54, -116.13, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 175);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reward_12_btl01", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "128":
                this.CreateBattleNpc("npc_main_nu_boss_m");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "anger", "npc_main_nu_boss_m");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.67, 1.19, -282.1]), lua.Table.create([13.59, -109.31, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.87, 1.19, -281.51]), lua.Table.create([13.59, -109.31, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_14_btl01", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "129":
                this.CreateBattleNpc("npc_main_secretary");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "anger", "npc_main_secretary");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.45, 1.34, -282.16]), lua.Table.create([14.1, -119.06, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.79, 1.34, -281.55]), lua.Table.create([14.1, -119.06, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_05_btl01", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "210":
                this.CreateBattleNpc("npc_driver_m_03");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 2);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "lose", "npc_driver_m_03");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.57, 1.27, -281.98]), lua.Table.create([14.67, -112.09, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.79, 1.27, -281.43]), lua.Table.create([14.67, -112.09, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 175);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reward_16_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            case "211":
                this.CreateBattleNpc("npc_main_nu_boss_f");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "anger", "npc_main_nu_boss_f");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.53, 1.26, -282.0]), lua.Table.create([15.73, -113.92, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.78, 1.26, -281.44]), lua.Table.create([15.73, -113.92, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 174);
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_15_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "212":
                this.CreateBattleNpc("npc_main_friend_f");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 346);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.63, 1.08, -282.24]), lua.Table.create([17.01, -114.49, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.94, 1.08, -281.57]), lua.Table.create([17.01, -114.49, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_04_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "213":
                this.CreateBattleNpc("npc_main_ga_leader");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 20);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.8, 0.72, -282.39]), lua.Table.create([16.72, -112.23, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-255.1, 0.72, -281.66]), lua.Table.create([16.72, -112.23, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_07_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "214":
                this.CreateBattleNpc("npc_schoolkids_m_03");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 22);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "sad", "npc_schoolkids_m_03");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.48, 0.76, -281.85]), lua.Table.create([16.19, -111.0, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.68, 0.76, -281.32]), lua.Table.create([16.19, -111.0, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reward_18_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            case "215":
                this.CreateBattleNpc("npc_main_ju_leader");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 20);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.46, 1.0, -282.02]), lua.Table.create([19.7, -116.35, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.74, 1.0, -281.45]), lua.Table.create([19.7, -116.35, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reward_09_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "216":
                this.CreateBattleNpc("npc_main_pa_leader");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "anger", "npc_main_pa_leader");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.87, 0.47, -282.3]), lua.Table.create([25.49, -103.68, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-255.07, 0.47, -281.48]), lua.Table.create([25.49, -103.68, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_13_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "217":
                this.CreateBattleNpc("npc_main_friend_m");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.29, 1.11, -281.88]), lua.Table.create([19.7, -119.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.54, 1.11, -281.44]), lua.Table.create([19.7, -119.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 174);
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_03_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "218":
                this.CreateBattleNpc("npc_sleeves_03");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 2);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "anger", "npc_sleeves_03");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.48, 1.25, -281.91]), lua.Table.create([17.77, -112.11, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.7, 1.25, -281.36]), lua.Table.create([17.77, -112.11, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 175);
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_23_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            case "219":
                this.CreateBattleNpc("npc_waiter_m_02");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 2);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "smile_bitter", "npc_waiter_m_02");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.53, 1.18, -282.13]), lua.Table.create([13.85, -115.37, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.84, 1.18, -281.47]), lua.Table.create([13.85, -115.37, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 174);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reward_19_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            case "220":
                this.CreateBattleNpc("npc_main_ga_boss");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "anger", "npc_main_ga_boss");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.46, 1.01, -282.03]), lua.Table.create([20.45, -115.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.73, 1.01, -281.47]), lua.Table.create([20.45, -115.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_06_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "221":
                this.CreateBattleNpc("npc_ga_member_f_03");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "rejoice_big", "npc_ga_member_f_03");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.43, 1.17, -282.03]), lua.Table.create([15.56, -116.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.74, 1.17, -281.4]), lua.Table.create([15.56, -116.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_21_btl11", "reward");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            case "222":
                this.CreateBattleNpc("npc_main_detective");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.38, 1.07, -282.0]), lua.Table.create([20.25, -118.58, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.67, 1.07, -281.47]), lua.Table.create([20.25, -118.58, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 174);
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_02_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "223":
                this.CreateBattleNpc("npc_main_co_boss");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.52, 1.14, -281.94]), lua.Table.create([17.32, -111.85, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.74, 1.14, -281.39]), lua.Table.create([17.32, -111.85, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 24);
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_10_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "224":
                this.CreateBattleNpc("npc_main_rival_m");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 2);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.36, 1.14, -281.79]), lua.Table.create([19.97, -112.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.57, 1.14, -281.31]), lua.Table.create([19.97, -112.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 174);
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_01_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "225":
                this.CreateBattleNpc("npc_main_ju_boss");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.82, 1.29, -282.43]), lua.Table.create([18.62, -110.58, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-255.15, 1.29, -281.54]), lua.Table.create([18.62, -110.58, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_08_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "226":
                this.CreateBattleNpc("npc_main_co_leader");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.53, 1.34, -282.03]), lua.Table.create([14.24, -114.98, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.79, 1.34, -281.48]), lua.Table.create([14.24, -114.98, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 346);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reward_11_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "227":
                this.CreateBattleNpc("npc_main_pa_boss");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 2);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "smile", "npc_main_pa_boss");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.53, 1.15, -282.1]), lua.Table.create([14.54, -116.13, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.84, 1.15, -281.48]), lua.Table.create([14.54, -116.13, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 175);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reward_12_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "228":
                this.CreateBattleNpc("npc_main_nu_boss_m");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "anger", "npc_main_nu_boss_m");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.67, 1.19, -282.1]), lua.Table.create([13.59, -109.31, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.87, 1.19, -281.51]), lua.Table.create([13.59, -109.31, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_14_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "229":
                this.CreateBattleNpc("npc_main_secretary");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 491);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "anger", "npc_main_secretary");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.45, 1.34, -282.16]), lua.Table.create([14.1, -119.06, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.79, 1.34, -281.55]), lua.Table.create([14.1, -119.06, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_05_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                this.FECCD6BC3CF2CA19B();
            case "230":
                this.CreateBattleNpc("npc_ju_member_m_03");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 2);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.46, 1.15, -282.04]), lua.Table.create([18.85, -116.79, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.75, 1.15, -281.46]), lua.Table.create([18.85, -116.79, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 174);
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_20_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            case "231":
                this.CreateBattleNpc("npc_backpacker_f_00");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 2);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "confident", "npc_backpacker_f_00");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.42, 1.22, -281.83]), lua.Table.create([19.74, -112.94, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.64, 1.22, -281.32]), lua.Table.create([19.74, -112.94, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 175);
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_reward_24_btl11", "reward");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            case "232":
                this.CreateBattleNpc("npc_ol_f_00");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 2);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "anger", "npc_ol_f_00");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-254.59, 1.1, -281.97]), lua.Table.create([21.61, -109.97, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-254.81, 1.1, -281.38]), lua.Table.create([21.61, -109.97, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                this.FE3D21257A15678CA();
                this.StartBattleLineEff();
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reward_17_btl11", "reward", this.slot11);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
        }
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_RESET_T500");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T1000_DELAY500");
    }
}
