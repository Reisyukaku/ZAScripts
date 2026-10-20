package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CF9046727E362F5F0")
@:expose("CF9046727E362F5F0")
class Ev_sub_002_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub002_001", "npc_pokemon_sub002_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var textResourcePath:Dynamic = untyped main.event.ik.command.TextResourceManager.GetTextResourcePath("script/main_03_01");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        var achievementMessage:Dynamic = "";
        var resultMode:Dynamic = untyped m_eventScriptParam.f73EE8FEC();
        if ("0" == resultMode)
        {
            achievementMessage = "msg_Ev_m03_0120_talk_30";
        }
        else if ("1" == resultMode)
        {
            achievementMessage = "msg_Ev_m03_0120_talk_31";
        }
        else if ("2" == resultMode)
        {
            achievementMessage = "msg_Ev_m03_0120_talk_32";
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-675.22), 0.15, (-121.67), 13.98);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub002_001", (-675.63), 0.15, (-120.21), (-174.59));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub002_1", (-674.71), 0.15, (-119.92), (-143.7));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub002_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub002_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub002_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-676.74), 1.72, (-123.1)]), lua.Table.create([(-13.39), (-145.17), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub002_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "Ev_sub_002_003_10", "sub_002", "npc_sub002_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub002_001", 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub002_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "Ev_sub_002_003_20", "sub_002", "npc_sub002_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-675.92), 1.59, (-121.04)]), lua.Table.create([1.73, (-160.71), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([(-675.85), 1.65, (-120.85)]), lua.Table.create([1.73, (-160.71), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub002_001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "Ev_sub_002_003_30", "sub_002", "npc_sub002_001");
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub002_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "Ev_sub_002_003_40", "sub_002", "npc_sub002_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub002_001", "serious");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-675.82), 2.28, (-120.75)]), lua.Table.create([(-52.83), (-143.82), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub002_001", "npc_pokemon_sub002_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub002_1", "npc_sub002_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "Ev_sub_002_003_50", "sub_002", "npc_sub002_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub002_1", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "Ev_sub_002_003_60", "sub_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-676.74), 1.72, (-123.1)]), lua.Table.create([(-13.39), (-145.17), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub002_001", 1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub002_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub002_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub002_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "Ev_sub_002_003_70", "sub_002", "npc_sub002_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0002");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, achievementMessage, "main_03_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
