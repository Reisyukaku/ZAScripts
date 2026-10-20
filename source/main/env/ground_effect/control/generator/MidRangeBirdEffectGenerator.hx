package main.env.ground_effect.control.generator;

import main.env.ground_effect.control.generator.GroundEffectGenerator;
import main.env.ground_effect.GroundEffectManager;
import main.util.PSTableAccessor;
import cppbindings.Vector3Values as Vector3;
import cppbindings.C1A00019C as Random;

@:keep
@:chunk("main")
@:hashAbi("CD03C4F2A038DF506")
@:expose("CD03C4F2A038DF506")
class MidRangeBirdEffectGenerator extends GroundEffectGenerator
{
    @:abiSlot(3)
    public var m_maxRadius:Float = 0;

    @:abiSlot(4)
    public var m_minRadius:Float = 0;

    @:abiSlot(5)
    public var m_diffRadius:Float = 0;

    @:abiSlot(6)
    public var m_startFadeTime:Float = 0;

    public function new(?config:Dynamic)
    {
        super(config);
    }

    @:hashAbi("FED89B77B7E80512A")
    public override function SetProperty(?ps:Dynamic):Dynamic
    {
        super.SetProperty(ps);
        this.m_maxRadius = main.util.PSTableAccessor.GetFloat(ps, "max_radius");
        this.m_minRadius = main.util.PSTableAccessor.GetFloat(ps, "min_radius");
        this.m_diffRadius = (this.m_maxRadius - this.m_minRadius);
        this.m_startFadeTime = main.util.PSTableAccessor.GetFloat(ps, "start_fade_time");
        return null;
    }

    @:hashAbi("F03C3FD12F7D1656D")
    public override function OnCheckDestroyInstance(?args:Dynamic, ?instance:Dynamic, ?instanceNum:Dynamic):Dynamic
    {
        instance.time += args.elapsedSeconds;
        return instance.time > m_startFadeTime;
    }

    @:hashAbi("F44D5992771D0D72A")
    public override function calcRayPos(offset:Vector3):Vector3
    {
        var randomOffset:lua.Table<Int, Float> = this.GetRandomInAnnulus();
        return ((lua.Table.create(([((cast offset)[1] + (cast randomOffset)[1]), ((cast offset)[2] + (cast randomOffset)[2]), ((cast offset)[3] + (cast randomOffset)[3])] : Array<Float>))));
    }

    @:hashAbi("F47052D9C4C5CCDBF")
    public function GetRandomInAnnulus():Vector3
    {
        var radialRandom:cppbindings.C1A00019C = main.env.ground_effect.GroundEffectManager.Random;
        var radius:StdTypes.Float = (({
            var maxRange:StdTypes.Float = this.m_diffRadius;
            var includeMaxRange:StdTypes.Bool = true;
            if ((includeMaxRange == null)) includeMaxRange = true;
            radialRandom.f52C8AF50(maxRange, includeMaxRange);
        }) + this.m_minRadius);
        var angularRandom:cppbindings.C1A00019C = main.env.ground_effect.GroundEffectManager.Random;
        var angle:StdTypes.Float = ({
            var includeMaxRange:StdTypes.Bool = false;
            if ((includeMaxRange == null)) includeMaxRange = true;
            angularRandom.f52C8AF50((lua.Math.pi * 2), includeMaxRange);
        });
        return ({
            var vectorValues:lua.Table<Int, Float> = ({
                var rhs:lua.Table<Int, Float> = ({
                    var x:StdTypes.Float = lua.Math.cos(angle);
                    var z:StdTypes.Float = lua.Math.sin(angle);
                    var vectorValues2:lua.Table<Int, Float>;
                    vectorValues2 = (lua.Table.create(([x, 0, z] : Array<Float>)));
                    cast vectorValues2;
                });
                {
                    var v:cppbindings.Vec3 = cppbindings.C7A48E3FC.fD9D3C136((cast rhs)[1], (cast rhs)[2], (cast rhs)[3]);
                    {
                        var x:StdTypes.Float = v.x;
                        var y:StdTypes.Float = v.y;
                        var z:StdTypes.Float = v.z;
                        var vectorValues4:lua.Table<Int, Float>;
                        vectorValues4 = (lua.Table.create(([x, y, z] : Array<Float>)));
                        cast vectorValues4;
                    };
                };
            });
            (lua.Table.create(([((cast (cast vectorValues))[1] * radius), ((cast (cast vectorValues))[2] * radius), ((cast (cast vectorValues))[3] * radius)] : Array<Float>)));
        });
    }
}
