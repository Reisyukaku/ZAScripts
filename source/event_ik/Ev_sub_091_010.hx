package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C3C9774A1716F752F")
@:expose("C3C9774A1716F752F")
class Ev_sub_091_010 extends BaseSubQuest
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
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-181.55, 0.29, -704.49]));
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_091_010_sys_01", "sub_091");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_091_010_select_01", "msg_Ev_sub_091_010_select_02"], 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if ((0 == selection)) {
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -181.36, 0.18, -702.7, -175.64);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 141);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon("MOGURYUU_01", lua.Table.create([-181.41, 0.22, -704.4]), -33.1, 529, 0, 0);
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("MOGURYUU_01", false);
            var effectKey:String = "line01";
            main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
            this.Await((function():Dynamic {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
            }));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-179.78, 2.95, -701.18]), lua.Table.create([-39.84, 32.1, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-180.05, 2.53, -701.61]), lua.Table.create([-39.84, 32.1, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MOGURYUU_01", 726);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.55);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 21);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("MOGURYUU_01", true);
            var pokemonAnimation:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MOGURYUU_01", 17);
            cppbindings.C5090F7B8.f92941AC0("flag_Ev_sub_091_010_moko", true);
            main.event.ik.command.IkScriptCommand.UpdateReplace();
            main.event.ik.command.IkScriptCommand.WaitReplace();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "MOGURYUU_01", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("MOGURYUU_01", "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pokemonAnimation);
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-180.53, 2.15, -702.23]), lua.Table.create([-36.61, 22.83, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.15, lua.Table.create([-181.0, 1.26, -703.34]), lua.Table.create([-36.61, 22.83, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))), null, null, null);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MOGURYUU_01", 31);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_091_010_talk_01", "sub_091", "MOGURYUU_01", true, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_EV_WILD");
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        };
        this.m_resultParam = selection;
    }
}
