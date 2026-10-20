package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CA7F2310A80BFD3AE")
@:expose("CA7F2310A80BFD3AE")
class Ev_sub_061_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub031_001", "npc_pokemon_sub031_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-817.9), 6.13, (-524.43), 83.43);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub031_001", (-816.74), 6.13, (-523.5), (-119.06));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub031_1", (-815.77), 6.13, (-524.97), (-82.09));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub031_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub031_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub031_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub031_001", 2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub031_001", "serious");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var effectKey:String = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-819.52), 7.45, (-522.88)]), lua.Table.create([(-5.1), (-61.66), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_001_talk_01", "sub_061", "npc_sub031_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-818.86), 7.2, (-523.56)]), lua.Table.create([6.81, (-91.12), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([(-818.21), 7.34, (-523.55)]), lua.Table.create([6.81, (-91.12), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub031_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub031_001", 174);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub031_001", 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_001_talk_02", "sub_061", "npc_sub031_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-818.21), 7.34, (-523.55)]), lua.Table.create([6.81, (-91.12), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([(-817.51), 7.52, (-523.53)]), lua.Table.create([6.81, (-91.12), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub031_001", 20);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub031_001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_061_001_talk_03", "sub_061");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-821.31), 9.21, (-525.04)]), lua.Table.create([(-28.12), (-88.8), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(8.0, lua.Table.create([(-821.3), 9.21, (-524.31)]), lua.Table.create([(-28.12), (-88.8), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_001_talk_04", "sub_061", "npc_sub031_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub031_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_001_talk_05", "sub_061", "npc_sub031_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub031_001", 2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-819.52), 7.45, (-522.88)]), lua.Table.create([(-5.1), (-61.66), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_001_talk_08", "sub_061", "npc_sub031_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub031_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_001_talk_09", "sub_061", "npc_sub031_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub031_001", 33, null, 3.85);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub031_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_001_talk_10", "sub_061", "npc_sub031_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub031_1", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0061");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
