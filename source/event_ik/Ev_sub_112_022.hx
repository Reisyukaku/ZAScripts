package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CF14595D82BE5413C")
@:expose("CF14595D82BE5413C")
class Ev_sub_112_022 extends BaseSubQuest
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
        var playerX:Dynamic = 0;
        var playerY:Dynamic = 0;
        var playerZ:Dynamic = 0;
        var playerAngle:Dynamic = 0;
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var firstLocation:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("TEMP_FLAG_sub112_1st");
        var secondLocation:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("TEMP_FLAG_sub112_2nd");
        var thirdLocation:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("TEMP_FLAG_sub112_3rd");
        var fourthLocation:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("TEMP_FLAG_sub112_4st");
        var fifthLocation:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("TEMP_FLAG_sub112_5st");
        if ((true == firstLocation))
        {
            playerX = untyped -465.2;
            playerY = untyped -5.95;
            playerZ = untyped -647.43;
            playerAngle = untyped -71.92;
            var cameraPosition:Dynamic = lua.Table.create([-466.41, -4.92, -646.65]);
            var cameraAngle:Dynamic = lua.Table.create([8.19, -44.49, -0.0]);
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraPosition, cameraAngle, 40.0, 0, cameraEase);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        };
        if ((true == secondLocation))
        {
            playerX = untyped -441.62;
            playerY = untyped -5.6;
            playerZ = untyped -649.51;
            playerAngle = untyped -170.71;
            var cameraPosition:Dynamic = lua.Table.create([-442.23, -4.54, -650.8]);
            var cameraAngle:Dynamic = lua.Table.create([6.68, -140.67, 0.0]);
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraPosition, cameraAngle, 40.0, 0, cameraEase);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        };
        if ((true == thirdLocation))
        {
            playerX = untyped -436.92;
            playerY = untyped -6.56;
            playerZ = untyped -637.88;
            playerAngle = untyped -140.63;
            var cameraPosition:Dynamic = lua.Table.create([-438.02, -5.54, -638.77]);
            var cameraAngle:Dynamic = lua.Table.create([9.46, -115.17, 0.0]);
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraPosition, cameraAngle, 40.0, 0, cameraEase);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        };
        if ((true == fourthLocation))
        {
            playerX = untyped -454.05;
            playerY = untyped -6.7;
            playerZ = untyped -617.68;
            playerAngle = 68.29;
            var cameraPosition:Dynamic = lua.Table.create([-452.6, -5.77, -617.64]);
            var cameraAngle:Dynamic = lua.Table.create([12.26, 100.1, -0.0]);
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraPosition, cameraAngle, 40.0, 0, cameraEase);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        };
        if ((true == fifthLocation))
        {
            playerX = untyped -471.95;
            playerY = 0.3;
            playerZ = untyped -619.32;
            playerAngle = untyped -152.82;
            var cameraPosition:Dynamic = lua.Table.create([-472.92, 1.18, -620.34]);
            var cameraAngle:Dynamic = lua.Table.create([14.42, -124.76, 0.0]);
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraPosition, cameraAngle, 40.0, 0, cameraEase);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        };
        if ((((((false == firstLocation) && (false == secondLocation)) && (false == thirdLocation)) && (false == fourthLocation)) && (false == fifthLocation)))
        {
            playerX = untyped -465.2;
            playerY = untyped -5.95;
            playerZ = untyped -647.43;
            playerAngle = untyped -71.92;
            var cameraPosition:Dynamic = lua.Table.create([-466.41, -4.92, -646.65]);
            var cameraAngle:Dynamic = lua.Table.create([8.19, -44.49, -0.0]);
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraPosition, cameraAngle, 40.0, 0, cameraEase);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", playerX, playerY, playerZ, playerAngle);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 201);
        var remainingTargets:Dynamic = 5;
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_112_1st")))
        {
            remainingTargets = 4;
        };
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_112_2nd")))
        {
            remainingTargets = untyped remainingTargets - 1;
        };
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_112_3rd")))
        {
            remainingTargets = untyped remainingTargets - 1;
        };
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_112_4st")))
        {
            remainingTargets = untyped remainingTargets - 1;
        };
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_112_5st")))
        {
            remainingTargets = untyped remainingTargets - 1;
        };
        var savedRemainingTargets:Dynamic = remainingTargets;
        if ((0 == savedRemainingTargets))
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "smile");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_112_024_sys_01", "sub_112");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.StartItemGetSequenceAuto();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 208);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            var cameraAngle:Dynamic = 2;
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_112_024_sys_02", "sub_112");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else if ((1 == savedRemainingTargets))
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            var cameraAngle:Dynamic = 2;
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_112_023_sys_01", "sub_112");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else if ((2 == savedRemainingTargets))
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            var cameraAngle:Dynamic = 2;
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_112_022_sys_01", "sub_112");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else if ((3 == savedRemainingTargets))
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            var cameraAngle:Dynamic = 2;
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_112_021_sys_01", "sub_112");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else if ((4 == savedRemainingTargets))
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            var cameraAngle:Dynamic = 2;
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_112_020_sys_01", "sub_112");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
    }
}
