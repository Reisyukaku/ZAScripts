package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CEA6443F2C395CFE9")
@:expose("CEA6443F2C395CFE9")
class Ev_sub_101_010 extends BaseSubQuest
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
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
        var eventParameters:Dynamic = this.m_eventScriptParam;
        var getEventMode:Dynamic = untyped eventParameters.f73EE8FEC;
        var getEventModeResult:Dynamic = getEventMode(eventParameters);
        if ("0" == getEventModeResult)
        {
            main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 0);
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "smile_bitter");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 201);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_101_010_sys_02", (("sub_101" : Dynamic)));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", (("normal" : Dynamic)));
            var fObj_Reset_Animation:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation;
            fObj_Reset_Animation((("Player" : Dynamic)));
            untyped this.m_resultParam = 0;
        }
        else
        {
            if ("1" == getEventModeResult)
            {
                main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 0);
                main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "smile_bitter");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 201);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
                main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_101_010_sys_03", (("sub_101" : Dynamic)));
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", (("normal" : Dynamic)));
                var fObj_Reset_Animation2:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation;
                fObj_Reset_Animation2((("Player" : Dynamic)));
                untyped this.m_resultParam = 0;
            }
            else
            {
                if ("10" == getEventModeResult)
                {
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T0");
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -777.68, 19.51, -784.28, -50.67);
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-775.9, 21.03, -784.34]), lua.Table.create([-17.04, 102.62, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.Create_NpcPokemon("EAAMUDO", lua.Table.create([-779.75, 22.13, -782.0]), 124.51, 227, 0, 0);
                    var concatResult:Dynamic = untyped lua.abi.Host.concat(Std.string("dyn_"), Std.string("npc_waiter_m_02"));
                    main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(concatResult, lua.Table.create([-775.06, 19.51, -782.26]), -129.23, "npc_waiter_m_02");
                    main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("EAAMUDO", false);
                    main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", (("line01" : Dynamic)));
                    this.Await((function():Dynamic
                    {
                        return main.event.ik.command.IkScriptCommand.IsSetUpEffect((("line01" : Dynamic)));
                    }));
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_INIT");
                    main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                    main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_101_010_sys_01", "sub_101");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", concatResult);
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-774.27, 21.33, -784.19]), lua.Table.create([-17.04, 102.62, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_waiter_m_02", -774.74, 19.51, -780.7, -120.32);
                    main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_waiter_m_02", -776.65, 19.51, -782.83, 0.5);
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn(concatResult, -104.02, false));
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_101_010_talk_02", "sub_101", concatResult);
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("EAAMUDO", true);
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-777.97, 22.5, -784.2]), lua.Table.create([11.89, 143.68, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                    main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("EAAMUDO", 2);
                    main.event.ik.command.IkScriptCommand.PlayEffectSequence((("line01" : Dynamic)));
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    var movementAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("EAAMUDO", -779.59, 19.49, -782.1, 0.5);
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-777.97, 19.74, -784.2]), lua.Table.create([11.89, 143.68, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                    main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_101_010_talk_03", "sub_101", null, true, true);
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.FadeEffect((("line01" : Dynamic)));
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action(movementAction);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "EAAMUDO");
                    main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(concatResult, "EAAMUDO");
                    main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("EAAMUDO", concatResult);
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-782.55, 20.1, -784.18]), lua.Table.create([-1.58, -97.06, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-782.65, 20.1, -783.34]), lua.Table.create([-1.58, -97.06, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation(concatResult, 21);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 203);
                    main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_101_010_talk_04", "sub_101", concatResult);
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", concatResult, "head");
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(concatResult, "Player", "head");
                    main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_101_010_talk_05", "sub_101", concatResult);
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-777.82, 20.16, -783.67]), lua.Table.create([5.04, 134.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("EAAMUDO", 17);
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                    main.event.ik.command.IkScriptCommand.PlayEffectSequence((("line01" : Dynamic)));
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.15, lua.Table.create([-778.04, 20.35, -783.49]), lua.Table.create([5.04, 134.95, 20.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
                    main.event.ik.command.IkScriptCommand.ShowMessage(1, (("msg_Ev_sub_101_010_talk_06" : Dynamic)), (("sub_101" : Dynamic)), ((null : Dynamic)), ((true : Dynamic)), ((true : Dynamic)));
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
                    var fadeOutType:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
                    fadeOutType(((7 : Dynamic)));
                    untyped this.m_resultParam = 1;
                }
                else
                {
                    if ("2" == getEventModeResult)
                    {
                        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 0);
                        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "smile_bitter");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 201);
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
                        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_101_010_sys_04", (("sub_101" : Dynamic)));
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", (("normal" : Dynamic)));
                        var fObj_Reset_Animation3:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation;
                        fObj_Reset_Animation3((("Player" : Dynamic)));
                        untyped this.m_resultParam = 0;
                    }
                    else
                    {
                        if ("3" == getEventModeResult)
                        {
                            main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 0);
                            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
                            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "smile_bitter");
                            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 201);
                            main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
                            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
                            main.event.ik.command.IkScriptCommand.Wait_Fade();
                            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_101_010_sys_05", (("sub_101" : Dynamic)));
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                            main.event.ik.command.IkScriptCommand.Wait_Fade();
                            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", (("normal" : Dynamic)));
                            var fObj_Reset_Animation4:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation;
                            fObj_Reset_Animation4((("Player" : Dynamic)));
                            untyped this.m_resultParam = 0;
                        }
                        else
                        {
                            if ("4" == getEventModeResult)
                            {
                                main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 0);
                                main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
                                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "smile_bitter");
                                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 201);
                                main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
                                main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
                                main.event.ik.command.IkScriptCommand.Wait_Fade();
                                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_101_010_sys_06", (("sub_101" : Dynamic)));
                                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                                main.event.ik.command.IkScriptCommand.Wait_Fade();
                                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", (("normal" : Dynamic)));
                                var fObj_Reset_Animation5:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation;
                                fObj_Reset_Animation5((("Player" : Dynamic)));
                                untyped this.m_resultParam = 0;
                            }
                            else
                            {
                                if ("5" == getEventModeResult)
                                {
                                    main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 0);
                                    main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
                                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "smile_bitter");
                                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 201);
                                    main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
                                    main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
                                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                                    main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_101_010_sys_07", (("sub_101" : Dynamic)));
                                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                                    main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                                    main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", (("normal" : Dynamic)));
                                    var fObj_Reset_Animation6:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation;
                                    fObj_Reset_Animation6((("Player" : Dynamic)));
                                    untyped this.m_resultParam = 0;
                                }
                                else
                                {
                                    if ("6" == getEventModeResult)
                                    {
                                        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 0);
                                        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
                                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                                        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "smile_bitter");
                                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 201);
                                        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
                                        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
                                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_101_010_sys_08", (("sub_101" : Dynamic)));
                                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                                        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                                        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                                        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                                        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", (("normal" : Dynamic)));
                                        var fObj_Reset_Animation7:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation;
                                        fObj_Reset_Animation7((("Player" : Dynamic)));
                                        untyped this.m_resultParam = 0;
                                    }
                                    else
                                    {
                                        if ("7" == getEventModeResult)
                                        {
                                            main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 0);
                                            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
                                            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                                            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "smile_bitter");
                                            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 201);
                                            main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
                                            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
                                            main.event.ik.command.IkScriptCommand.Wait_Fade();
                                            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                                            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_101_010_sys_09", (("sub_101" : Dynamic)));
                                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                                            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                                            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                                            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                                            main.event.ik.command.IkScriptCommand.Wait_Fade();
                                            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", (("normal" : Dynamic)));
                                            var fObj_Reset_Animation8:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation;
                                            fObj_Reset_Animation8((("Player" : Dynamic)));
                                            untyped this.m_resultParam = 0;
                                        }
                                        else
                                        {
                                            if ("8" == getEventModeResult)
                                            {
                                                main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 0);
                                                main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
                                                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                                                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "smile_bitter");
                                                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 201);
                                                main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
                                                main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
                                                main.event.ik.command.IkScriptCommand.Wait_Fade();
                                                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                                                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_101_010_sys_10", (("sub_101" : Dynamic)));
                                                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                                                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                                                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                                                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                                                main.event.ik.command.IkScriptCommand.Wait_Fade();
                                                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", (("normal" : Dynamic)));
                                                var fObj_Reset_Animation9:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation;
                                                fObj_Reset_Animation9((("Player" : Dynamic)));
                                                untyped this.m_resultParam = 0;
                                            }
                                            else
                                            {
                                                if ("9" == getEventModeResult)
                                                {
                                                    main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 0);
                                                    main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
                                                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                                                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "smile_bitter");
                                                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 201);
                                                    main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
                                                    main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
                                                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                                                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                                                    main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_101_010_sys_11", (("sub_101" : Dynamic)));
                                                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                                                    main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                                                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                                                    main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                                                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                                                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", (("normal" : Dynamic)));
                                                    var fObj_Reset_Animation10:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation;
                                                    fObj_Reset_Animation10((("Player" : Dynamic)));
                                                    untyped this.m_resultParam = 0;
                                                }
                                                else
                                                {
                                                };
                                            };
                                        };
                                    };
                                };
                            };
                        };
                    };
                };
            };
        };
    }
}
