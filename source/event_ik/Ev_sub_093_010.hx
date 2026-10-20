package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C90E15A84C9D42B35")
@:expose("C90E15A84C9D42B35")
class Ev_sub_093_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub093_001", "npc_pokemon_sub093_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_pokemon_sub093_1", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_pokemon_sub093_1");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_pokemon_sub093_1");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_093_010_sys_01", "sub_093", "npc_sub093_001");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_093_010_select_01", "msg_Ev_sub_093_010_select_02"], 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        // The effect is awaited whichever entry was chosen.
        this.Await(function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        });
        if (selection == 0)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub093_1", -209.4, 18.92, -438.04, -147.75);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_sub093_1");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-210.76, 18.99, -438.71]), lua.Table.create([3.02, -111.63, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)), null, null, null);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub093_1", 17);
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.4, lua.Table.create([-210.7, 19.48, -438.54]), lua.Table.create([3.02, -111.63, 20.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)), null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_093_010_talk_01", "sub_093", null, true, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_EV_WILD");
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        }
        this.m_resultParam = selection;
    }
}
