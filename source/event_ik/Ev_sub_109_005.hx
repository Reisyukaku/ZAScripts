package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C64B1DCCCAE697A07")
@:expose("C64B1DCCCAE697A07")
class Ev_sub_109_005 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_pokemon_sub109_0"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub109_0", -135.1, -4.7, -364.65, 153.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FIELD_VOL_ON");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-134.1, -3.96, -367.38]), lua.Table.create([-4.71, 160.51, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([-134.31, -4.01, -366.8]), lua.Table.create([-4.71, 160.51, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub109_0", 17);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_sub109_001", lua.Table.create([-127.19, -4.7, -364.67]), -105.02, "npc_child02_a_m_01");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub109_0", 20);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub109_0", -135.78, -4.7, -362.74, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.2);
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_SUB_109_DISAPPEARANCE", lua.Table.create([-135.78, -4.7, -362.74]));
        var blinkCount:Dynamic = 0;
        while (blinkCount < 7)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", false);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", true);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.035);
            blinkCount = untyped blinkCount + 1;
        };
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub109_0", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -134.54, -4.69, -366.28, -16.88);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub109_001", "anger_mc");
        var childMovement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_sub109_001", -133.43, -4.7, -365.9, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-135.55, -3.48, -364.75]), lua.Table.create([-3.06, -58.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.8, lua.Table.create([-135.82, -3.48, -365.19]), lua.Table.create([-3.06, -58.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_npc_sub109_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(childMovement);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_npc_sub109_001", -53.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_npc_sub109_001", lua.Table.create([-135.78, -3.2, -362.74]));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_109_010_talk_03", "sub_109", "dyn_npc_sub109_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-135.78, -3.2, -362.74]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
    }
}
