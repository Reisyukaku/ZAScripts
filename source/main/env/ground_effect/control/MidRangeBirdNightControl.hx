package main.env.ground_effect.control;

import main.env.ground_effect.control.GroundEffectControlBase;
import main.env.ground_effect.GroundEffectControlConfig;
import main.util.PSTableAccessor;
import cppbindings.C4B6212B8 as WeatherApi;
import cppbindings.C712737ED as AsyncRayCastResult;
import cppbindings.Vector3Values as Vector3;

@:keep
@:chunk("main")
@:hashAbi("CF139E60DDE5354B2")
@:expose("CF139E60DDE5354B2")
class MidRangeBirdNightControl extends GroundEffectControlBase
{
    @:abiSlot(20)
    public var m_offsetHeight:Float = 0;

    @:abiSlot(21)
    public var m_isEnableWeather:Bool = false;

    @:abiSlot(22)
    public var m_isEnableGameTime:Bool = false;

    @:abiSlot(23)
    public var m_geneStartTime:Float = 0;

    @:abiSlot(24)
    public var m_geneEndTime:Float = 0;

    @:abiSlot(25)
    public var m_generateWeatherType:Array<Int> = [];

    public function new(?owner:Dynamic, ?config:Dynamic, ?generator:Dynamic)
    {
        super(owner, config, generator);
    }

    @:hashAbi("F7A3D296366E973CB")
    public override function Initialize():Dynamic
    {
        this.UpdateEnableByWeather(cppbindings.C4B6212B8.f55C66EAF());
        this.UpdateEnableByGameTime();
        return null;
    }

    @:hashAbi("F2B9DAFCC347DE61B")
    public function get_Name():Dynamic
    {
        return "MidRangeBirdNight";
    }

    @:hashAbi("F6D2BEA21B2529B09")
    public function get_TemplateName():Dynamic
    {
        return "mid_range_bird_night";
    }

    @:hashAbi("FB5E33D4F9269AF61")
    public override function setConfig(?config:Dynamic):Dynamic
    {
        var ownerSnapshot:main.env.ground_effect.control.MidRangeBirdNightControl = this;
        var controlConfig:main.env.ground_effect.GroundEffectControlConfig = config;
        this.m_offsetHeight = main.util.PSTableAccessor.GetFloat(controlConfig.m_prop, "offset_height");
        this.m_geneStartTime = main.util.PSTableAccessor.GetFloat(controlConfig.m_prop, "generate_start_time");
        this.m_geneEndTime = main.util.PSTableAccessor.GetFloat(controlConfig.m_prop, "generate_end_time");
        main.util.PSTableAccessor.IterateEnumList(controlConfig.m_prop, "targetWeather", function(name:String, value:Dynamic):StdTypes.Void {
            var weather:StdTypes.Int = (cast(value, StdTypes.Int));
            if ((ownerSnapshot.m_generateWeatherType.indexOf(weather) < 0)) {
                ownerSnapshot.m_generateWeatherType.push(weather);
            };
        });
        return null;
    }

    @:hashAbi("F669F56455D737060")
    public override function calcInstaniatePos(?result:AsyncRayCastResult):Dynamic
    {
        var position:lua.Table<Int, Float> = ({
            var _this:cppbindings.CA877D16F = result.f07F620A3();
            {
                var v:cppbindings.Vec3 = _this.f1B877572();
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues:lua.Table<Int, Float>;
                    vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues);
                };
            };
        });
        return ({
            var y:StdTypes.Float = ((cast position)[2] + this.m_offsetHeight);
            var vectorValues3:lua.Table<Int, Float>;
            vectorValues3 = (lua.Table.create(([(cast position)[1], y, (cast position)[3]] : Array<Float>)));
            cast (cast vectorValues3);
        });
    }

    @:hashAbi("F606BD9A1748215F6")
    public function UpdateActive():Dynamic
    {
        return m_isEnableWeather ? m_isEnableGameTime : false;
    }

    @:hashAbi("F970217BDDC4A3AC8")
    public function OnWeatherChanged(?prevType:Dynamic, ?currentType:Dynamic):Dynamic
    {
        UpdateEnableByWeather(currentType);
        return null;
    }

    @:hashAbi("F5AF2CD3056F874F6")
    public function UpdateEnableByWeather(?currentType:Dynamic):Dynamic
    {
        m_isEnableWeather = m_generateWeatherType.length == 0 || m_generateWeatherType.indexOf(currentType) >= 0;
        return null;
    }

    @:hashAbi("F993763797090B9A6")
    public function OnHour():Dynamic
    {
        UpdateEnableByGameTime();
        return null;
    }

    @:hashAbi("FEE93A3737EC2E545")
    public function UpdateEnableByGameTime():Dynamic
    {
        return null;
    }

    @:hashAbi("F64E7150CE3AE6333")
    public function IsGeneratedTime(?time:Dynamic):Dynamic
    {
        if (m_geneStartTime == m_geneEndTime)
        {
            return true;
        }
        if (m_geneStartTime > m_geneEndTime)
        {
            return time > m_geneStartTime || time < m_geneEndTime;
        }
        return time > m_geneStartTime && time < m_geneEndTime;
    }
}
