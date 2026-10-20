package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C203E53FA2834761D")
@:expose("C203E53FA2834761D")
class Ev_sub_115_040 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub115_001", "npc_pokemon_sub115_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:Dynamic = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-744.07, 9.79, -252.0]), lua.Table.create([-27.51, 45.43, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-743.75, 9.79, -252.32]), lua.Table.create([-27.51, 45.43, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -745.01, 7.92, -253.05, -142.22);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub115_1", -745.82, 7.9, -254.91, 23.39);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub115_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub115_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub115_1", 21));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub115_1", 26));
        var animationHandle:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub115_1", 25);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_115_040_sys_01", "sub_115");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub115_1", 17);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-744.66, 9.66, -252.2]), lua.Table.create([-28.08, 22.94, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([-745.37, 8.69, -253.88]), lua.Table.create([-28.08, 22.94, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_S");
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_115_040_talk_01", "sub_115", null, false, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_EV_WILD");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
    }
}
