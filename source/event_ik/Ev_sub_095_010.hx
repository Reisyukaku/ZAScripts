package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C5DBA3C579A21B863")
@:expose("C5DBA3C579A21B863")
class Ev_sub_095_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub095_001", "npc_pokemon_sub095_1", "npc_pokemon_sub095_2", "npc_pokemon_sub095_3", "npc_pokemon_sub095_4", "npc_pokemon_sub095_5"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey = "ef_line";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub095_1", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_095_010_sys_01", "sub_095");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_095_010_select_01", "msg_Ev_sub_095_010_select_02"], 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (0 == selection)
        {
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -159.0, -5.18, -383.81, 77.74);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_pokemon_sub095_1");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            this.Await((function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
            }));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-159.72, -4.65, -384.47]), lua.Table.create([-5.36, -106.87, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(15, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T0");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub095_1", "Player");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub095_2", "Player");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub095_3", "Player");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub095_4", "Player");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub095_5", "Player");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_1", 17);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_2", 17);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_3", 17);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_4", 17);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_5", 17);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([-158.84, -4.74, -384.21]), lua.Table.create([-5.36, -106.87, 15.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(29, Int)), null, null, null);
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB_095_010_0688_00_INDEX");
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_095_010_talk_01", "sub_095", null, false, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_EV_WILD");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T3000");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        };
        untyped this.m_resultParam = selection;
    }
}
