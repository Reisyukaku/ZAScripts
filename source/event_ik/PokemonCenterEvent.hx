package event_ik;

import main.event.ik.base.BaseEvent;
import main.event.ik.command.IkScriptCommand;
import main.event.ik.command.TextResourceManager;

@:keep
@:chunk("event_ik")
@:hashAbi("CF4E3354E1B1957C6")
@:expose("CF4E3354E1B1957C6")
class PokemonCenterEvent extends BaseEvent
{
    @:abiSlot(8)
    public var pokecenLadyName:String = "";

    @:abiSlot(9)
    public var pokecenSceneName:String = "";

    @:abiSlot(10)
    public var slot10:Bool = false;

    @:abiSlot(11)
    public var slot11:Bool = false;

    public function new()
    {
        super();
    }

    @:hashAbi("SFC7FE40C2148D84C")
    public static function MakeNewPosition(newCharaPos:Array<Float>, originCharaPos:Array<Float>, originCharaRot:Float, newCharaRot:Float, originTargetPos:Array<Float>):Array<Float>
    {
        var dx = originTargetPos[0] - originCharaPos[0];
        var dy = originTargetPos[1] - originCharaPos[1];
        var dz = originTargetPos[2] - originCharaPos[2];
        var newDX = dx;
        var newDZ = dz;
        if (originCharaRot != newCharaRot)
        {
            var radians = -((lua.Math.pi * (newCharaRot - originCharaRot)) / 180);
            var cosine = lua.Math.cos(radians);
            var sine = lua.Math.sin(radians);
            newDX = dx * cosine - dz * sine;
            newDZ = dx * sine + dz * cosine;
        }
        return [newCharaPos[0] + newDX, newCharaPos[1] + dy, newCharaPos[2] + newDZ];
    }

    @:hashAbi("F3250254222F75035")
    public override function OnEnd():Dynamic
    {
        TextResourceManager.UnloadTextResource("script/sub_069");
        return super.OnEnd();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var ownerSnapshot:event_ik.PokemonCenterEvent = this;
        var posX:StdTypes.Float = 0.0;
        var posY:StdTypes.Float = 0.0;
        var posZ:StdTypes.Float = 0.0;
        var playerAngle:StdTypes.Float = 0.0;
        this.slot10 = false;
        var resource:String = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/sub_069");
        main.event.ik.command.TextResourceManager.LoadTextResource(resource);
        this.Await(function():StdTypes.Bool {
            return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(resource);
        });
        main.event.ik.command.IkScriptCommand.Camera_Start();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        var centerName:String = "t1_pokecen_veil1";
        var centerID:String = untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC();
        @:ast(switch (centerID) {
            case "10":{
                pokecenSceneName = "t1_b04";
                posX = -758.27;
                posY = 0.66;
                posZ = -877.34;
                playerAngle = 36.0;
                centerName = "t1_pokecen_veil1";
            };
            case "20":{
                pokecenSceneName = "t1_b08";
                posX = -480.59;
                posY = 0.61;
                posZ = -788.45;
                playerAngle = 94.36;
                centerName = "t1_pokecen_blue2";
            };
            case "21":{
                pokecenSceneName = "t1_b02";
                posX = -245.22;
                posY = 0.6;
                posZ = -881.6;
                playerAngle = -121.48;
                centerName = "t1_pokecen_blue1";
            };
            case "30":{
                pokecenSceneName = "t1_b12";
                posX = -321.65;
                posY = 0.66;
                posZ = -473.25;
                playerAngle = 164.04;
                centerName = "t1_pokecen_rose2";
            };
            case "31":{
                pokecenSceneName = "t1_b16";
                posX = -76.29;
                posY = 0.66;
                posZ = -326.66;
                playerAngle = -107.26;
                centerName = "t1_pokecen_rose1";
            };
            case "40":{
                pokecenSceneName = "t1_b23";
                posX = -517.86;
                posY = 0.66;
                posZ = -44.05;
                playerAngle = -177.0;
                centerName = "t1_pokecen_rouge1";
            };
            case "50":{
                pokecenSceneName = "t1_b19";
                posX = -690.63;
                posY = 0.66;
                posZ = -268.1;
                playerAngle = 146.48;
                centerName = "t1_pokecen_jaune2";
            };
            case "51":{
                pokecenSceneName = "t1_b20";
                posX = -923.73;
                posY = 0.66;
                posZ = -324.17;
                playerAngle = 23.21;
                centerName = "t1_pokecen_jaune1";
            };
            case "60":{
                pokecenSceneName = "t1_b18";
                posX = -519.48;
                posY = 0.65;
                posZ = -401.28;
                playerAngle = -85.39;
                centerName = "t1_pokecen_rouge2";
            };
            default:
        }) switch centerID {
            case "10":{
                {
                    this.pokecenSceneName = "t1_b04";
                    posX = -758.27;
                    posY = 0.66;
                    posZ = -877.34;
                    playerAngle = 36.0;
                    centerName = "t1_pokecen_veil1";
                };
            };
            case "20":{
                {
                    this.pokecenSceneName = "t1_b08";
                    posX = -480.59;
                    posY = 0.61;
                    posZ = -788.45;
                    playerAngle = 94.36;
                    centerName = "t1_pokecen_blue2";
                };
            };
            case "21":{
                {
                    this.pokecenSceneName = "t1_b02";
                    posX = -245.22;
                    posY = 0.6;
                    posZ = -881.6;
                    playerAngle = -121.48;
                    centerName = "t1_pokecen_blue1";
                };
            };
            case "30":{
                {
                    this.pokecenSceneName = "t1_b12";
                    posX = -321.65;
                    posY = 0.66;
                    posZ = -473.25;
                    playerAngle = 164.04;
                    centerName = "t1_pokecen_rose2";
                };
            };
            case "31":{
                {
                    this.pokecenSceneName = "t1_b16";
                    posX = -76.29;
                    posY = 0.66;
                    posZ = -326.66;
                    playerAngle = -107.26;
                    centerName = "t1_pokecen_rose1";
                };
            };
            case "40":{
                {
                    this.pokecenSceneName = "t1_b23";
                    posX = -517.86;
                    posY = 0.66;
                    posZ = -44.05;
                    playerAngle = -177.0;
                    centerName = "t1_pokecen_rouge1";
                };
            };
            case "50":{
                {
                    this.pokecenSceneName = "t1_b19";
                    posX = -690.63;
                    posY = 0.66;
                    posZ = -268.1;
                    playerAngle = 146.48;
                    centerName = "t1_pokecen_jaune2";
                };
            };
            case "51":{
                {
                    this.pokecenSceneName = "t1_b20";
                    posX = -923.73;
                    posY = 0.66;
                    posZ = -324.17;
                    playerAngle = 23.21;
                    centerName = "t1_pokecen_jaune1";
                };
            };
            case "60":{
                {
                    this.pokecenSceneName = "t1_b18";
                    posX = -519.48;
                    posY = 0.65;
                    posZ = -401.28;
                    playerAngle = -85.39;
                    centerName = "t1_pokecen_rouge2";
                };
            };
            default:{ };
        };
        cppbindings.C56DE81E7.f366EE9BB(centerName);
        this.pokecenLadyName = main.event.ik.command.IkScriptCommand.GetLastInteractObjectName("BOOT_CONDITION_TALK_NPC");
        var introductionComplete:StdTypes.Bool = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_PokemonCenterEvent");
        var storyComplete:StdTypes.Bool = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m03_0110");
        var birthdayConfigured:StdTypes.Bool = main.event.ik.command.IkScriptCommand.IsBirthdaySetupCheck();
        var birthdayEventComplete:StdTypes.Bool = main.event.ik.command.IkScriptCommand.IsBirthdayEvent();
        var todayBirthday:StdTypes.Bool = (main.event.ik.command.IkScriptCommand.IsTodayBirthday() != 0);
        main.event.ik.command.IkScriptCommand.IsTodayBirthday();
        var greeting:String = "msg_pokecen_01";
        if (main.event.ik.command.IkScriptCommand.GetFlagValue("SYS_FLAG_GAME_CLEAR")) {
            if (main.event.ik.command.IkScriptCommand.S945A889425CEA31C(4, 10)) {
                greeting = "msg_pokecen_clear_01";
            } else {
                if (main.event.ik.command.IkScriptCommand.S945A889425CEA31C(11, 19)) {
                    greeting = "msg_pokecen_clear_02";
                } else {
                    if ((main.event.ik.command.IkScriptCommand.S945A889425CEA31C(20, 24) || main.event.ik.command.IkScriptCommand.S945A889425CEA31C(0, 3))) {
                        greeting = "msg_pokecen_clear_03";
                    };
                };
            };
        } else {
            if (main.event.ik.command.IkScriptCommand.S945A889425CEA31C(4, 10)) {
                greeting = "msg_pokecen_01";
            } else {
                if (main.event.ik.command.IkScriptCommand.S945A889425CEA31C(11, 19)) {
                    greeting = "msg_pokecen_02";
                } else {
                    if ((main.event.ik.command.IkScriptCommand.S945A889425CEA31C(20, 24) || main.event.ik.command.IkScriptCommand.S945A889425CEA31C(0, 3))) {
                        greeting = "msg_pokecen_03";
                    };
                };
            };
        };
        var questAvailable:StdTypes.Bool = ((untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC() == "10") && (main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_QUEST_69") == 10));
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template(this.pokecenLadyName, 6, 1.6, null, ((lua.Table.create(([0, -0.12, 0] : Array<Float>)))));
        main.event.ik.command.IkScriptCommand.ReturnPartnerPoke();
        var runMenu:(StdTypes.Bool, StdTypes.Bool, StdTypes.Bool) -> StdTypes.Bool = function(allowBirthday:StdTypes.Bool, allowQuest:StdTypes.Bool, markIntroduction:StdTypes.Bool):StdTypes.Bool {
            var finished:StdTypes.Bool = false;
            while (!finished) {
                var restricted:StdTypes.Bool = ((ownerSnapshot.m_resultParam == 2) || (ownerSnapshot.slot11 == true));
                var birthdayOption:StdTypes.Bool = (allowBirthday && !restricted);
                var labels:Array<String> = ["msg_select_pokecen_01", "msg_select_pokecen_06"];
                if (birthdayOption) {
                    labels.push("msg_select_pokecen_04");
                };
                if (allowQuest) {
                    labels.push("msg_select_pokecen_069_01");
                };
                labels.push("msg_select_pokecen_05");
                var choice:StdTypes.Int = main.event.ik.command.IkScriptCommand.ShowContextMenu(labels, 0, true, false);
                if ((choice == 0)) {
                    ownerSnapshot.ExecuteRestMenu();
                } else {
                    if ((choice == 1)) {
                        ownerSnapshot.ExecuteShopping();
                    } else {
                        if ((birthdayOption && (choice == 2))) {
                            ownerSnapshot.slot11 = true;
                            ownerSnapshot.ExecuteBirthdayMenu();
                            main.event.ik.command.IkScriptCommand.IsBirthdaySetupCheck();
                            var birthdayComplete:StdTypes.Bool = main.event.ik.command.IkScriptCommand.IsBirthdayEvent();
                            main.event.ik.command.IkScriptCommand.IsTodayBirthday();
                            main.event.ik.command.IkScriptCommand.IsTodayBirthday();
                            if ((birthdayComplete == true)) {
                                main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
                                main.event.ik.command.IkScriptCommand.Wait_Fade();
                            };
                        } else {
                            if ((allowQuest && (choice == (if (birthdayOption) {
                                3;
                            } else {
                                2;
                            })))) {
                                ownerSnapshot.ExecuteSabuQuest();
                                return true;
                            } else {
                                if (((markIntroduction && !restricted) && (choice == 3))) {
                                    ownerSnapshot.m_resultParam = 70;
                                };
                                finished = true;
                            };
                        };
                    };
                };
                if (!finished) {
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_pokecen_again_01", null, ownerSnapshot.pokecenLadyName);
                };
                if (((markIntroduction && !restricted) && (ownerSnapshot.m_resultParam == 70))) {
                    ownerSnapshot.F934F78933A0EC5CF();
                };
            };
            return false;
        };
        var greetOnBirthday:() -> StdTypes.Void = function():StdTypes.Void {
            if (((todayBirthday == true) && (birthdayEventComplete == false))) {
                main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink(ownerSnapshot.pokecenLadyName, false);
                ownerSnapshot.F1E99CC9E5F95EAB9();
                main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
            };
            if (((todayBirthday == true) && (birthdayEventComplete == false))) {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_pokecen_04", null, ownerSnapshot.pokecenLadyName);
            } else {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, greeting, null, ownerSnapshot.pokecenLadyName);
            };
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", posX, posY, posZ, playerAngle);
        };
        if ((questAvailable == true)) {
            if (((birthdayConfigured == false) && (storyComplete == true))) {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, greeting, null, this.pokecenLadyName);
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", posX, posY, posZ, playerAngle);
                if (runMenu((introductionComplete != false), true, (introductionComplete == false))) {
                    return;
                };
            };
            if ((birthdayConfigured == true)) {
                greetOnBirthday();
                if (runMenu(false, true, false)) {
                    return;
                };
            };
        };
        if ((questAvailable == false)) {
            greetOnBirthday();
            if ((introductionComplete == false)) {
                runMenu(false, false, false);
            } else {
                if ((birthdayConfigured == true)) {
                    runMenu(false, false, false);
                } else {
                    if ((storyComplete == true)) {
                        runMenu(true, false, false);
                    } else {
                        runMenu(false, false, false);
                    };
                };
            };
            if (((storyComplete == true) && (introductionComplete == false))) {
                this.F934F78933A0EC5CF();
            };
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal_noColCheck("Player", this.pokecenLadyName);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.pokecenLadyName);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var action:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.pokecenLadyName, 29);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.pokecenLadyName);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_pokecen_cancel_01", null, this.pokecenLadyName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if ((main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_QUEST_118") == 1)) {
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            this.m_resultParam = 9;
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.pokecenLadyName);
            main.event.ik.command.IkScriptCommand.FObj_Set_Facial(this.pokecenLadyName, 352, 451);
        } else {
            main.event.ik.command.IkScriptCommand.ResetToFieldCamera(0.5);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(action);
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.pokecenLadyName);
            main.event.ik.command.IkScriptCommand.FObj_Set_Facial(this.pokecenLadyName, 352, 451);
            main.event.ik.command.IkScriptCommand.Wait_ResetToFieldCamera();
        };
    }

    @:hashAbi("F2A226CA7CCF66FB1")
    public function ExecuteSabuQuest():Dynamic
    {
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var effect:String = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effect);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_069_010_talk_01", "sub_069", this.pokecenLadyName);
        var choice:StdTypes.Int = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_069_010_select_01", "msg_Ev_sub_069_010_select_02"], 0, true, false, 2, 0, "sub_069");
        if ((choice == 0)) {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.pokecenLadyName, "rejoice_small_mc");
            this.Await(function():StdTypes.Bool {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effect);
            });
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.pokecenLadyName, "battle");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-758.3, 2.01, -877.36] : Array<Float>)))), ((lua.Table.create(([0.0, -144.0, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(19));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, ((lua.Table.create(([-757.91, 2.1, -876.82] : Array<Float>)))), ((lua.Table.create(([0.0, -144.0, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(19));
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(effect);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_S");
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_069_010_talk_04", "sub_069", this.pokecenLadyName);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.pokecenLadyName, "confident");
            main.event.ik.command.IkScriptCommand.Wait_Time(1.8);
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
            main.event.ik.command.IkScriptCommand.FadeEffect(effect);
            this.m_resultParam = 8;
        } else {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_069_010_talk_02", "sub_069", this.pokecenLadyName);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
            main.event.ik.command.IkScriptCommand.Camera_Easy_Normal_noColCheck("Player", this.pokecenLadyName);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.pokecenLadyName);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var action:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.pokecenLadyName, 29);
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.pokecenLadyName);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_pokecen_cancel_01", null, this.pokecenLadyName);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            if ((main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_QUEST_118") == 1)) {
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                this.m_resultParam = 9;
                main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.pokecenLadyName);
                main.event.ik.command.IkScriptCommand.FObj_Set_Facial(this.pokecenLadyName, 352, 451);
            } else {
                main.event.ik.command.IkScriptCommand.ResetToFieldCamera(0.5);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(action);
                main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.pokecenLadyName);
                main.event.ik.command.IkScriptCommand.FObj_Set_Facial(this.pokecenLadyName, 352, 451);
                main.event.ik.command.IkScriptCommand.Wait_ResetToFieldCamera();
            };
        };
        return null;
    }

    public function F934F78933A0EC5CF():Dynamic
    {
        IkScriptCommand.WordSet_Name_Player(0);
        IkScriptCommand.SetFacialTemplate(pokecenLadyName, "rejoice_small_mc");
        IkScriptCommand.ShowMessage(0, "msg_pokecen_set_birthday_01", null, pokecenLadyName);
        var initialChoice = IkScriptCommand.ShowContextMenu(["msg_select_shop_sell_01", "msg_select_shop_sell_02"], 0, true, false);
        if (initialChoice == 0)
        {
            var finished = false;
            var month = 0;
            var day = 0;
            while (!finished)
            {
                IkScriptCommand.SetFacialTemplate(pokecenLadyName, "normal");
                IkScriptCommand.FObj_Set_AutoBlink(pokecenLadyName, false);
                IkScriptCommand.ShowMessage(0, "msg_pokecen_set_birthday_02", null, pokecenLadyName);
                IkScriptCommand.HideMessageWindow();
                IkScriptCommand.Wait_Time(1.0);
                IkScriptCommand.SDF42F9D9961D0772();
                month = IkScriptCommand.SetBirthday_month();
                if (month > 0)
                {
                    day = IkScriptCommand.SetBirthday_day();
                }
                IkScriptCommand.S7BF170BA136B3024();
                IkScriptCommand.FObj_Set_AutoBlink(pokecenLadyName, true);
                var choice = 0;
                if (month > 0 && day > 0)
                {
                    IkScriptCommand.WordSet_Name_Player(0);
                    IkScriptCommand.WordSet_Number(1, month);
                    IkScriptCommand.WordSet_Number(2, day);
                    IkScriptCommand.ShowMessage(0, "msg_pokecen_set_birthday_03", null, pokecenLadyName);
                    choice = IkScriptCommand.ShowContextMenu(["msg_select_pokecen_set_birthday_01", "msg_select_pokecen_set_birthday_02", "msg_select_pokecen_set_birthday_03"], 0, true);
                }
                else
                {
                    choice = 2;
                }
                switch (choice)
                {
                    case 0:
                        IkScriptCommand.SetFacialTemplate(pokecenLadyName, "rejoice_small_mc");
                        IkScriptCommand.ShowMessage(0, "msg_pokecen_set_birthday_04", null, pokecenLadyName);
                        finished = true;
                        if (month == 2 && day == 29)
                        {
                            IkScriptCommand.ShowMessage(0, "msg_pokecen_set_birthday_05_02", null, pokecenLadyName);
                        }
                        else
                        {
                            IkScriptCommand.ShowMessage(0, "msg_pokecen_set_birthday_05_01", null, pokecenLadyName);
                        }
                        IkScriptCommand.SetFacialTemplate(pokecenLadyName, "normal");
                        m_resultParam = 2;
                        IkScriptCommand.SaveBirthday(month, day);
                        IkScriptCommand.IsBirthdaySetupCheck();
                        var eventComplete:Bool = IkScriptCommand.IsBirthdayEvent();
                        var todayBirthday = IkScriptCommand.IsTodayBirthday() != 0;
                        var leapDay = IkScriptCommand.IsTodayBirthday() == 2;
                        if (todayBirthday == true && eventComplete == false)
                        {
                            IkScriptCommand.ShowMessage(0, leapDay ? "msg_pokecen_set_birthday_08" : "msg_pokecen_set_birthday_07", null, pokecenLadyName);
                            IkScriptCommand.HideMessageWindow();
                            IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
                            IkScriptCommand.Wait_Fade();
                            IkScriptCommand.FObj_Set_AutoBlink(pokecenLadyName, false);
                            IkScriptCommand.UpdateReplace();
                            IkScriptCommand.WaitReplace();
                            IkScriptCommand.Wait_Time(2.0);
                            IkScriptCommand.Fade_In("transition_fade_inout");
                            IkScriptCommand.Wait_Fade();
                            F1E99CC9E5F95EAB9();
                            return null;
                        }
                        else
                        {
                            IkScriptCommand.HideMessageWindow();
                        }
                        IkScriptCommand.SetFacialTemplate(pokecenLadyName, "normal");
                    case 1:
                    case 2:
                        IkScriptCommand.ShowMessage(0, "msg_pokecen_set_birthday_06", null, pokecenLadyName);
                        finished = true;
                        IkScriptCommand.HideMessageWindow();
                    default:
                }
            }
        }
        else
        {
            IkScriptCommand.SetFacialTemplate(pokecenLadyName, "normal");
            IkScriptCommand.ShowMessage(0, "msg_pokecen_set_birthday_06", null, pokecenLadyName);
            IkScriptCommand.HideMessageWindow();
        }
        return null;
    }

    public function F1E99CC9E5F95EAB9():Dynamic
    {
        var effect:String = "ef_pokecen_birthday";
        main.event.ik.command.IkScriptCommand.CreateEffect("field/pokecen/pokecen_birthday/ef_pokecen_birthday", effect);
        var character:cppbindings.C2FE46DCA = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(this.pokecenLadyName);
        var position:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = character.f7360ED03();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
        var angles:lua.Table<Int, Float> = ({
            var _this:cppbindings.CD5675BA5 = character.f64857644();
            {
                var v:cppbindings.Vec3 = _this.f643B5D6F();
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues3:lua.Table<Int, Float>;
                    vectorValues3 = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues3);
                };
            };
        });
        var yaw:StdTypes.Float = (((cast angles)[2] / (2 * lua.Math.pi)) * 360.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        this.Await(function():StdTypes.Bool {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effect);
        });
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var originalPosition:Array<StdTypes.Float> = [-757.377, 0.649, -876.096];
        var newPosition:Array<StdTypes.Float> = [(cast position)[1], (cast position)[2], (cast position)[3]];
        var target:Array<StdTypes.Float> = event_ik.PokemonCenterEvent.MakeNewPosition(newPosition, originalPosition, -144.0, yaw, [-757.82, 2.11, -876.71]);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, ((lua.Table.create(([target[0], target[1], target[2]] : Array<Float>)))), ((lua.Table.create(([0.0, yaw, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.pokecenLadyName);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.pokecenLadyName, 31);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effect);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        target = event_ik.PokemonCenterEvent.MakeNewPosition(newPosition, originalPosition, -144.0, yaw, [-758.3, 2.01, -877.36]);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, ((lua.Table.create(([target[0], target[1], target[2]] : Array<Float>)))), ((lua.Table.create(([0.0, yaw, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_BIRTHDAY");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.pokecenLadyName, "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, (if ((main.event.ik.command.IkScriptCommand.IsTodayBirthday() == 2)) {
            "msg_pokecen_birthday_01_02";
        } else {
            "msg_pokecen_birthday_01";
        }), null, this.pokecenLadyName);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        target = event_ik.PokemonCenterEvent.MakeNewPosition(newPosition, originalPosition, -144.0, yaw, [-758.27, 0.66, -877.34]);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", target[0], 0.66, target[2], (yaw + 180.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        target = event_ik.PokemonCenterEvent.MakeNewPosition(newPosition, originalPosition, -144.0, yaw, [-759.67, 2.03, -877.41]);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([target[0], target[1], target[2]] : Array<Float>)))), ((lua.Table.create(([-3.17, (yaw + 37.59), 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.pokecenLadyName);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_pokecen_birthday_03", null, this.pokecenLadyName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink(this.pokecenLadyName, true);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.pokecenLadyName, "normal");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template(this.pokecenLadyName, 6, 1.6, null, ((lua.Table.create(([0, -0.12, 0] : Array<Float>)))));
        main.event.ik.command.IkScriptCommand.SetBirthdayEvent(true);
        return null;
    }

    @:hashAbi("F60EC4A7B50635A39")
    public function ExecuteRestMenu():Dynamic
    {
        if (slot10)
        {
            var count:UInt = IkScriptCommand.GetPokemonCount_Party();
            IkScriptCommand.ShowMessage(0, count > 1 ? "msg_pokecen_06" : "msg_pokecen_05", null, pokecenLadyName);
        }
        else
        {
            IkScriptCommand.ShowMessage(0, "msg_pokecen_kaifuku_01", null, pokecenLadyName);
            IkScriptCommand.HideMessageWindow();
            PlayRestDemo();
            IkScriptCommand.PokemonAllRecovery();
            var count = IkScriptCommand.GetPokemonCount_Party();
            var leadPokemon = IkScriptCommand.GetPlayerPartyUnitParam(0);
            IkScriptCommand.SetFacialTemplate(pokecenLadyName, "rejoice_small_mc");
            if (count == 1)
            {
                IkScriptCommand.WordSet_Name_Mons(0, cast(leadPokemon.f0DE6FCA9(), Int));
                IkScriptCommand.ShowMessage(0, "msg_pokecen_kaifuku_02", null, pokecenLadyName);
            }
            else
            {
                IkScriptCommand.WordSet_Name_Mons(0, cast(leadPokemon.f0DE6FCA9(), Int));
                IkScriptCommand.ShowMessage(0, "msg_pokecen_kaifuku_02_s", null, pokecenLadyName);
            }
        }
        slot10 = true;
        IkScriptCommand.SetFacialTemplate(pokecenLadyName, "normal");
        return null;
    }

    @:hashAbi("F264C6DAD456CCCBC")
    public function ExecuteShopping():Dynamic
    {
        if (IkScriptCommand.GetFlagValue("flag_PokemonCenterEvent_Shop") == false)
        {
            if (m_resultParam == 1)
            {
                IkScriptCommand.HideMessageWindow();
            }
            else
            {
                IkScriptCommand.ShowMessage(0, "msg_shopshopping_01", null, pokecenLadyName);
                m_resultParam = 1;
            }
        }
        else
        {
            IkScriptCommand.HideMessageWindow();
        }
        var choice = IkScriptCommand.ShowContextMenu(["msg_select_pokecen_02", "msg_select_pokecen_03", "msg_select_pokecen_05"], 0, true, false);
        switch (choice)
        {
            case 0:
                ExecuteBuyMenu();
            case 1:
                ExecuteSaleMenu();
            default:
        }
        return null;
    }

    @:hashAbi("F52440698CE6E744F")
    public function ExecuteBuyMenu():Dynamic
    {
        IkScriptCommand.HideMessageWindow();
        IkScriptCommand.OpenFriendlyShop_Buy("a01_friendlyshop_01");
        return null;
    }

    @:hashAbi("F8F5212CB54ABAB14")
    public function ExecuteSaleMenu():Dynamic
    {
        IkScriptCommand.FObj_Reset_Animation(pokecenLadyName);
        IkScriptCommand.HideMessageWindow();
        IkScriptCommand.OpenFriendlyShop_Sell("a01_friendlyshop_01");
        return null;
    }

    @:hashAbi("FB3DE187FA244810E")
    public function ExecuteBirthdayMenu():Dynamic
    {
        var finished = false;
        var month = 0;
        var day = 0;
        while (!finished)
        {
            IkScriptCommand.SetFacialTemplate(pokecenLadyName, "normal");
            IkScriptCommand.FObj_Set_AutoBlink(pokecenLadyName, false);
            IkScriptCommand.ShowMessage(0, "msg_pokecen_set_birthday_02", null, pokecenLadyName);
            IkScriptCommand.HideMessageWindow();
            IkScriptCommand.Wait_Time(1.0);
            IkScriptCommand.SDF42F9D9961D0772();
            month = IkScriptCommand.SetBirthday_month();
            if (month > 0)
            {
                day = IkScriptCommand.SetBirthday_day();
            }
            IkScriptCommand.S7BF170BA136B3024();
            IkScriptCommand.FObj_Set_AutoBlink(pokecenLadyName, true);
            var choice = 0;
            if (month > 0 && day > 0)
            {
                IkScriptCommand.WordSet_Name_Player(0);
                IkScriptCommand.WordSet_Number(1, month);
                IkScriptCommand.WordSet_Number(2, day);
                IkScriptCommand.ShowMessage(0, "msg_pokecen_set_birthday_03", null, pokecenLadyName);
                choice = IkScriptCommand.ShowContextMenu(["msg_select_pokecen_set_birthday_01", "msg_select_pokecen_set_birthday_02", "msg_select_pokecen_set_birthday_03"], 0, true);
            }
            else
            {
                choice = 2;
            }
            switch (choice)
            {
                case 0:
                    IkScriptCommand.SetFacialTemplate(pokecenLadyName, "rejoice_small_mc");
                    IkScriptCommand.ShowMessage(0, "msg_pokecen_set_birthday_04", null, pokecenLadyName);
                    finished = true;
                    if (month == 2 && day == 29)
                    {
                        IkScriptCommand.ShowMessage(0, "msg_pokecen_set_birthday_05_02", null, pokecenLadyName);
                    }
                    else
                    {
                        IkScriptCommand.ShowMessage(0, "msg_pokecen_set_birthday_05_01", null, pokecenLadyName);
                    }
                    IkScriptCommand.SetFacialTemplate(pokecenLadyName, "normal");
                    m_resultParam = 2;
                    IkScriptCommand.SaveBirthday(month, day);
                    IkScriptCommand.IsBirthdaySetupCheck();
                    var eventComplete:Bool = IkScriptCommand.IsBirthdayEvent();
                    var todayBirthday = IkScriptCommand.IsTodayBirthday() != 0;
                    var leapDay = IkScriptCommand.IsTodayBirthday() == 2;
                    if (todayBirthday == true && eventComplete == false)
                    {
                        IkScriptCommand.ShowMessage(0, leapDay ? "msg_pokecen_set_birthday_08" : "msg_pokecen_set_birthday_07", null, pokecenLadyName);
                        IkScriptCommand.HideMessageWindow();
                        IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
                        IkScriptCommand.Wait_Fade();
                        IkScriptCommand.FObj_Set_AutoBlink(pokecenLadyName, false);
                        IkScriptCommand.UpdateReplace();
                        IkScriptCommand.WaitReplace();
                        IkScriptCommand.Wait_Time(2.0);
                        IkScriptCommand.Fade_In("transition_fade_inout");
                        IkScriptCommand.Wait_Fade();
                        F1E99CC9E5F95EAB9();
                        return null;
                    }
                    IkScriptCommand.SetFacialTemplate(pokecenLadyName, "normal");
                case 1:
                case 2:
                    IkScriptCommand.ShowMessage(0, "msg_pokecen_set_birthday_06", null, pokecenLadyName);
                    finished = true;
                    slot11 = false;
                default:
            }
        }
        return null;
    }

    @:hashAbi("F0FF05733499C7D16")
    public function PlayRestDemo():Dynamic
    {
        cppbindings.CDDCCFBA7.fFA7FBE0B("pc_id", Std.parseInt(untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC()));
        cppbindings.CDDCCFBA7.f9DAF5BF2("recover_pc");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        var scene:StdTypes.Null<cppbindings.CA042DA13> = cppbindings.C682D8E4F.fEF94D11D(this.pokecenSceneName);
        var party:{ public var f701A6236(default, null) : StdTypes.Int -> { public var f0C3B7419(default, null) : Dynamic; }; public var f5BFC43FB(default, null) : () -> StdTypes.Int; } = untyped (cast main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent("Player") : Dynamic).fA1DE81A4();
        var partyCount:StdTypes.Int = party.f5BFC43FB();
        var requests:Array<Dynamic> = [];
        var balls:Array<cppbindings.C016374C1> = [];
        balls.resize(partyCount);
        var createdCount:StdTypes.Int = 0;
        var center:StdTypes.Null<cppbindings.C016374C1> = scene.fD4E64AB7("t1_b_pokemon_center_in");
        var machine:StdTypes.Null<cppbindings.C016374C1> = center.f5439788F("machine");
        this.Await_no_timeout(function():StdTypes.Bool {
            return cppbindings.C56DE81E7.f9B15DEA0(machine);
        });
        cppbindings.C56DE81E7.f3D27A883(machine, "ObjectCreate");
        while (!cppbindings.C56DE81E7.fC0476D73(machine, "ObjectCreate")) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        {
            var arrayIndex:StdTypes.Int = 0;
            var arrayIndex2:StdTypes.Int = partyCount;
            while ((arrayIndex < arrayIndex2)) {
                var index:StdTypes.Int = arrayIndex++;
                var partyIndex:StdTypes.Int = index;
                requests.push(cppbindings.C56DE81E7.f1F3E7404(machine, party.f701A6236(partyIndex).f0C3B7419(), function(ball:cppbindings.C016374C1):StdTypes.Void {
                    balls[partyIndex] = ball;
                    createdCount++;
                }));
            };
        };
        var template:StdTypes.Null<cppbindings.C451059A3> = cppbindings.C451059A3.f5776B6C6("world/ik_obj_template/effect/field/pokecen/pokecen_machine_effect_/pokecen_machine_effect.trsot");
        while (!template.f900312E7()) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        var effect:StdTypes.Null<cppbindings.C016374C1> = scene.f68159593("pokecen_machine_effect", template);
        while ((createdCount != partyCount)) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        while ((!effect.f9D8BC178() || !effect.f48F8C7FF())) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        effect.f4D31CD40(center);
        {
            var translation:lua.Table<Int, Float> = ({
                var v:cppbindings.Vec3 = machine.f750133BA();
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues:lua.Table<Int, Float>;
                    vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast vectorValues;
                };
            });
            {
                effect.f8F2B0552((cast translation)[1], (cast translation)[2], (cast translation)[3]);
            };
            translation;
        };
        {
            var rotation:cppbindings.CD5675BA5 = machine.f16155D9E();
            effect.f24032F87(rotation);
            rotation;
        };
        var timeline:UInt = cppbindings.C8A144091.fE459D175();
        cppbindings.C8A144091.f9DCF42D7(timeline, "machine", ((((this.pokecenSceneName + ".") + center.fE9C29DA1()) + ".") + machine.fE9C29DA1()));
        {
            var arrayIndex3:StdTypes.Int = 0;
            var arrayIndex4:StdTypes.Int = balls.length;
            while ((arrayIndex3 < arrayIndex4)) {
                var index:StdTypes.Int = arrayIndex3++;
                if ((balls[index] != null)) {
                    cppbindings.C8A144091.f9DCF42D7(timeline, ("BALL0" + (index + 1)), ((balls[index].f462C9B70().fE9C29DA1() + ".") + balls[index].fE9C29DA1()));
                };
            };
        };
        cppbindings.C8A144091.f9DCF42D7(timeline, "Camera", (((effect.f462C9B70().fE9C29DA1() + ".") + effect.fE9C29DA1()) + ".Camera"));
        cppbindings.C8A144091.f9DCF42D7(timeline, "ef_pokecen_machine", (((effect.f462C9B70().fE9C29DA1() + ".") + effect.fE9C29DA1()) + ".ef_pokecen_machine"));
        {
            var path:cppbindings.C4D8F1342 = cppbindings.C4D8F1342.f69D04ADF("ik_effect/data/field/pokecen/pokecen_machine/pokecen_machine.trtml");
            cppbindings.C8A144091.f33BF92B1(timeline, path);
        };
        var elapsed:StdTypes.Float = 0.0;
        var timedOut:StdTypes.Bool = false;
        while ((cppbindings.C8A144091.f75C96ED8(timeline) != 5)) {
            elapsed += main.event.ik.command.IkScriptCommand.Suspend();
            if ((elapsed > 6.0)) {
                timedOut = true;
                break;
            };
        };
        if (!timedOut) {
            cppbindings.C8A144091.f40B8C6B1(timeline);
            while (!cppbindings.C8A144091.f59D006EE(timeline)) {
                main.event.ik.command.IkScriptCommand.Suspend();
            };
        };
        cppbindings.C8A144091.f12AF8664(timeline);
        {
            var arrayIndex5:StdTypes.Int = 0;
            while ((arrayIndex5 < requests.length)) {
                var request:Dynamic = requests[arrayIndex5];
                ++arrayIndex5;
                if ((request != null)) {
                    cppbindings.C56DE81E7.fCC57175B(machine, request);
                };
            };
        };
        {
            var withChildren:StdTypes.Bool = true;
            if ((withChildren == null)) withChildren = true;
            effect.fCDCB600D(withChildren);
        };
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template(this.pokecenLadyName, 6, 1.6, null, ((lua.Table.create(([0, -0.12, 0] : Array<Float>)))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        return null;
    }
}
