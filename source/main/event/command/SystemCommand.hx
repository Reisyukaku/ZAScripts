package main.event.command;

import cppbindings.CA042DA13 as Scene;
import cppbindings.CB0108755 as Date_Tm;
import cppbindings.C2FB59E8B;
import cppbindings.CDD25B9DB;

@:keep
@:chunk("main")
@:hashAbi("CC6FE82819C6E1D55")
@:expose("CC6FE82819C6E1D55")
class SystemCommand
{
    @:hashAbi("S12F63EE47FFCB183")
    public static function Suspend():Dynamic
    {
        ti.Coroutine.yield(null);
        return main.event.ik.EventScriptManager.DeltaTime;
    }

    @:hashAbi("S32FAD7D4DF3ACA95")
    public static function TimeWait(?second:Dynamic):Dynamic
    {
        var elapsed = 0.0;
        while (second > elapsed)
        {
            elapsed += Suspend();
        }
        return null;
    }

    @:hashAbi("S903489488FB9BA8D")
    public static function Await(?timeout:Dynamic, ?awaitFunc:Dynamic):Bool
    {
        var elapsed = 0.0;
        while (!awaitFunc())
        {
            elapsed += Suspend();
            if (timeout > 0 && timeout <= elapsed)
            {
                return awaitFunc() ? true : false;
            }
        }
        return true;
    }

    @:hashAbi("SC22C2773A68837D3")
    public static function SceneLoad(?scene:Scene):Dynamic
    {
        if ((scene == null)) {
            return null;
        };
        scene.f0EF10D0C();
        main.event.command.SystemCommand.SceneWaitLoad(scene);
        return null;
    }

    @:hashAbi("S4B29BA68DD122462")
    public static function SceneWaitLoad(?scene:Scene):Dynamic
    {
        if ((scene == null)) {
            return null;
        };
        main.event.command.SystemCommand.Await(0, function():StdTypes.Bool {
            if (scene.f48F8C7FF()) {
                return scene.f9D8BC178();
            };
            return false;
        });
        return null;
    }

    @:hashAbi("SF8D8FFC774DA1818")
    public static function SceneUnload(?scene:Scene):Dynamic
    {
        if ((scene == null)) {
            return null;
        };
        scene.f5C99C0AC();
        while (scene.f48F8C7FF()) {
            main.event.command.SystemCommand.Suspend();
        };
        return null;
    }

    @:hashAbi("SF42297B52592C534")
    public static function FixWeather(?type:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("SFA080E90544CD37C")
    public static function ResetWeather():Dynamic
    {
        return null;
    }

    @:hashAbi("SDCE07F60FC71076F")
    public static function EnableGemLight(?enable:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("SFE94C226821A5232")
    public static function SetEnvChangeSpan(?span:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("SCD581AE8B98326BF")
    public static function ResetEnvChangeSpan():Dynamic
    {
        return null;
    }

    @:hashAbi("S58EF529F6D0A954C")
    public static function FixLight(?path:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("SFBB264B9BD1C3BF4")
    public static function ResetLight():Dynamic
    {
        return null;
    }

    @:hashAbi("S719BBB9B28F07743")
    public static function ResetAreaLight():Dynamic
    {
        return null;
    }

    @:hashAbi("S975C6D6600A6650B")
    public static function FixGameTime(?hour:Dynamic, ?minutes:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("S4522DCD2B1203CE3")
    public static function ResetGameTime():Dynamic
    {
        return null;
    }

    @:hashAbi("S382EF94083B73A74")
    public static function timeToDecimal(?hour:Dynamic, ?minutes:Dynamic):Dynamic
    {
        hour = main.util.Math.Clamp(hour, 0, 24);
        minutes = main.util.Math.Clamp(minutes, 0, 59);
        return hour + minutes / 60.0;
    }

    @:hashAbi("S39AB7174ED2F4AE3")
    public static function GetRealWeek():Dynamic
    {
        return main.event.command.SystemCommand.GetRealDateTm().f556CE5E0();
    }

    @:hashAbi("S7AB47C2CA914E33D")
    public static function GetRealHour():Dynamic
    {
        return main.event.command.SystemCommand.GetRealDateTm().f3CC42131();
    }

    @:hashAbi("S2E94018BB428249C")
    public static function GetRealDateTm():Date_Tm
    {
        return cppbindings.C4DDE9906.fEDD88BEB(cppbindings.C4DDE9906.f544F902B().f9D26E972());
    }

    @:hashAbi("S03C74CCED292E948")
    public static function EnablePartner(?enable:Dynamic, ?wait:Dynamic):Dynamic
    {
        if (wait == null)
        {
            wait = true;
        }
        if (!enable)
        {
            DeletePartner();
        }
        return null;
    }

    @:hashAbi("S172BEAC9DD2E8674")
    public static function DeletePartner():Dynamic
    {
        if (C2FB59E8B.fB900AE56() != null)
        {
            C2FB59E8B.f4DEAA13C();
        }
        return null;
    }

    @:hashAbi("S3252424B748C9A31")
    public static function CreatePartner(?wait:Dynamic):Dynamic
    {
        if (wait == null)
        {
            wait = true;
        }
        return null;
    }

    @:hashAbi("S0D3D1CD2E13ED62F")
    public static function FirstReport():Dynamic
    {
        return null;
    }

    @:hashAbi("S4EEC6683CE38C64B")
    public static function Report():Dynamic
    {
        return null;
    }

    @:hashAbi("SC57CA938D5038813")
    public static function SetClearFlagSave():Dynamic
    {
        return null;
    }

    @:hashAbi("S93943C38B249317B")
    public static function RandomInt(?max:Dynamic, ?min:Dynamic):Dynamic
    {
        if (null == min)
        {
            min = 0;
        }
        if (max < min)
        {
            return min;
        }
        return main.util.RandomUtility.get_Rng().fDAAAA586((max - min)) + min;
    }

    @:hashAbi("S078818907A8711C3")
    public static function StartTimeLapse(?day:Dynamic, ?startTime:Dynamic, ?endTime:Dynamic, ?duration:Dynamic, ?isWait:Dynamic):Dynamic
    {
        if (isWait == null)
        {
            isWait = false;
        }
        return null;
    }

    @:hashAbi("S456C704648223659")
    public static function GetVersion():Dynamic
    {
        return CDD25B9DB.f4F92E4A5();
    }
}
