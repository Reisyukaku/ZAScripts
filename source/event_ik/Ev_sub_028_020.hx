package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C3500272068C946D0")
@:expose("C3500272068C946D0")
class Ev_sub_028_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = [];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -356.43, 19.81, -70.15, 95.86);
        var effectKey:String = "ef_line";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub028_1", false);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_npc_pokemon_sub028_1", lua.Table.create([-353.15, 19.78, -70.25]), -90.4, 702, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 203);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_npc_pokemon_sub028_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_pokemon_sub028_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-354.51, 20.24, -70.86]), lua.Table.create([-14.3, -67.91, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-354.12, 20.24, -69.87]), lua.Table.create([-14.3, -67.91, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_pokemon_sub028_1", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_028_020_talk_01", "sub_028", null, false, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_pokemon_sub028_1", 17);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.4, lua.Table.create([-358.2, 21.38, -68.79]), lua.Table.create([-14.3, -67.9, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_028_020_talk_02", "sub_028", null, false, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_EV_WILD");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
    }
}
