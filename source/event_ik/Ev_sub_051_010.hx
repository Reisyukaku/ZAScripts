package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C9D6FA0FEC0631F8B")
@:expose("C9D6FA0FEC0631F8B")
class Ev_sub_051_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = ([]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub051_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub051_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub051_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub051_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub051_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_051_010_talk_01", "sub_051", "npc_sub051_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_051_010_talk_12", "sub_051", "npc_sub051_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
        var result:StdTypes.Int = 0;
        var selectedItem:Dynamic = main.event.ik.command.IkScriptCommand.OpenItemSelectMenu();
        if (((((selectedItem == 30) || (selectedItem == 31)) || (selectedItem == 32)) || (selectedItem == 33))) {
            ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
            main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub051_001");
            main.event.ik.command.IkScriptCommand.ModifyItemNum_Int(selectedItem, -1);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_051_010_talk_03", "sub_051", "npc_sub051_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub051_001", 21);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_051_010_talk_04", "sub_051", "npc_sub051_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            cppbindings.C5090F7B8.f92941AC0("flag_Ev_sub_051_HoroUnlock", true);
            main.event.ik.command.IkScriptCommand.UpdateReplace();
            main.event.ik.command.IkScriptCommand.WaitReplace();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_051_010_talk_05", "sub_051", "npc_sub051_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub051_001");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -368.77, 0.11, -947.06, -38.69);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub051_001", -367.92, 0.1, -945.61, -79.44);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-365.63, 3.24, -949.27]), lua.Table.create([-3.7, 136.73, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            var cameraEase:StdTypes.Null<Dynamic> = (main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, StdTypes.Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-365.63, 1.14, -949.27]), lua.Table.create([-3.7, 136.73, -0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub051_001", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_051_010_talk_07", "sub_051", "npc_sub051_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub051_001", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub051_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_sub051_001");
            var npcTurn:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub051_001", "Player");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcTurn);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_051_010_talk_11", "sub_051", "npc_sub051_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0051");
            ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        } else {
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub051_001", 175);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_051_010_talk_02", "sub_051", "npc_sub051_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            result = 1;
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        };
        this.m_resultParam = result;
    }
}
