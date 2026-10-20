package main.env.weather;

import ext.pe.SceneObjectBehavior;

@:keep
@:chunk("main")
@:hashAbi("CA66BF560955C69B4")
@:expose("CA66BF560955C69B4")
class WeatherManager extends SceneObjectBehavior
{
    public function new(?obj:Dynamic)
    {
        super(obj);
    }

    @:hashAbi("SF42297B52592C534")
    public static function FixWeather(?type:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("S94E16271BD3B6E0C")
    public static function UpdateWeatherBySchedule(?type:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("S86341B7D94F32542")
    public static function RestoreDefaultWeather():Dynamic
    {
        return null;
    }

    @:hashAbi("S04D149DCA86F800F")
    public static function IsWeatherFixed():Dynamic
    {
        return false;
    }

    @:hashAbi("S9191B545B68EC8BB")
    public static function RegistListener(?v:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("S58EF529F6D0A954C")
    public static function FixLight(?lightFilePath:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("SFED6DFC24DA46109")
    public static function FixGemLight():Dynamic
    {
        return null;
    }

    @:hashAbi("S4644857FE48F3111")
    public static function ResetGemLight():Dynamic
    {
        return null;
    }

    @:hashAbi("SB117DE28B83C7406")
    public static function RestoreDefaultLight():Dynamic
    {
        return null;
    }

    @:hashAbi("S9A88C5C61CF71CBB")
    public static function IsLightFixed():Dynamic
    {
        return null;
    }

    @:hashAbi("S6DA8357EAF07E5D1")
    public static function OverwriteAreaLight(?priority:Dynamic, ?lightFileName:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("S719BBB9B28F07743")
    public static function ResetAreaLight():Dynamic
    {
        return null;
    }

    @:hashAbi("S7F58C1C1C1936899")
    public static function RemoveListener(?v:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("S6EB79EDA6243D7B2")
    public static function LotteryWeatherHappening(?type:Dynamic):Dynamic
    {
        return false;
    }

    @:hashAbi("S9B2711059BD10366")
    public static function IsChanging():Dynamic
    {
        return false;
    }

    @:hashAbi("SFE94C226821A5232")
    public static function SetEnvChangeSpan(?span:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("S48FAB23AAE71DAF6")
    public static function GetEnvChangeSpan():Dynamic
    {
        return 1.0;
    }

    @:hashAbi("SCD581AE8B98326BF")
    public static function ResetEnvChangeSpan():Dynamic
    {
        return null;
    }

    @:hashAbi("S673A2139C10E9F2B")
    public static function BeginSyncWeather():Dynamic
    {
        return {seed: 0, lotteryResultSize: 0, lotteryResult: []};
    }

    @:hashAbi("S7E44AA30D4F2D5DA")
    public static function SyncWeather(?rhs:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("SDB0B955173CFCB04")
    public static function get_CurrentClimateType():Dynamic
    {
        return cppbindings.C4B6212B8.f6362F6BB();
    }

    @:hashAbi("S140D4AF66303E453")
    public static function get_CurrentWeatherType():Dynamic
    {
        return cppbindings.C4B6212B8.f55C66EAF();
    }

    @:hashAbi("S75913830658A499B")
    public static function get_PrevWeatherType():Dynamic
    {
        return cppbindings.C4B6212B8.f5112F5F5();
    }

    @:hashAbi("S8450E23FF2FCF710")
    public static function get_LightUpdateInterval():Dynamic
    {
        return 1.0;
    }

    @:hashAbi("S02AAB7CF91AF5C94")
    public static function set_LightUpdateInterval(?value:Dynamic):Dynamic
    {
        return 1.0;
    }

    @:hashAbi("S21511A28D08A3988")
    public static function ResetLightUpdateInterval():Dynamic
    {
        return null;
    }
}
