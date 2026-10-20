package main.env.ground_effect.control.generator;

import main.env.ground_effect.control.generator.EffectGeneratorBase;
import main.env.ground_effect.GroundEffectGenerate;
import main.env.ground_effect.GroundEffectManager;
import cppbindings.Vector3Values as Vector3;
import cppbindings.CD5675BA5 as Quaternion;
import cppbindings.CE8D61D7D as ParticleComponent;
import cppbindings.C99578B50 as AsyncRayCastRequester;
import cppbindings.C1A00019C as Random;

@:keep
@:chunk("main")
@:hashAbi("C8F7AE2638186E74F")
@:expose("C8F7AE2638186E74F")
class GroundEffectGenerator extends EffectGeneratorBase
{
    @:abiSlot(2)
    public var Property:GroundEffectGenerate;

    public function new(?config:Dynamic)
    {
        super(config);
    }

    @:hashAbi("FED89B77B7E80512A")
    public override function SetProperty(?ps:Dynamic):Dynamic
    {
        Property = new GroundEffectGenerate(ps);
        return null;
    }

    @:hashAbi("FC72763F5ABB22644")
    public override function CheckInstanceNum(?instanceNum:Dynamic):Dynamic
    {
        return instanceNum >= Property.InstanceMax;
    }

    @:hashAbi("F9AA4F70E3E01F86F")
    public override function OnGenerate(?camera:Dynamic):Dynamic
    {
        var cameraPosition:lua.Table<Int, Float> = untyped (cast camera : Dynamic).pos;
        var rotation:cppbindings.CD5675BA5 = cppbindings.CD5675BA5.fFA44D7AF(untyped (cast camera : Dynamic).yaw, 0, 0);
        var distance:StdTypes.Float = this.Property.Offset;
        var offset:lua.Table<Int, Float> = ({
            var v:lua.Table<Int, Float> = ((lua.Table.create(([(0 * distance), (0 * distance), (-1 * distance)] : Array<Float>))));
            {
                var v:cppbindings.Vec3 = rotation.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
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
        var center:lua.Table<Int, Float> = ((lua.Table.create(([((cast cameraPosition)[1] + (cast offset)[1]), ((cast cameraPosition)[2] + (cast offset)[2]), ((cast cameraPosition)[3] + (cast offset)[3])] : Array<Float>))));
        var rayCount:StdTypes.Int = this.Property.RayNum;
        {
            var arrayIndex:StdTypes.Int = 0;
            var arrayIndex2:StdTypes.Int = rayCount;
            while ((arrayIndex < arrayIndex2)) {
                var index:StdTypes.Int = arrayIndex++;
                var rayPosition:lua.Table<Int, Float> = this.calcRayPos(center);
                if ((rayPosition != null)) {
                    this.calcRay(rayPosition);
                };
            };
        };
        return null;
    }

    @:hashAbi("F03C3FD12F7D1656D")
    public override function OnCheckDestroyInstance(?args:Dynamic, ?instance:Dynamic, ?instanceNum:Dynamic):Dynamic
    {
        var particle:cppbindings.CE8D61D7D = untyped (cast instance : Dynamic).particle;
        return particle.f11CC5570();
    }

    @:hashAbi("F44D5992771D0D72A")
    public function calcRayPos(offset:Vector3):Vector3
    {
        var randomOffset:lua.Table<Int, Float> = this.GetRandomInCircle(this.Property.Radius);
        return ((lua.Table.create(([((cast offset)[1] + (cast randomOffset)[1]), ((cast offset)[2] + (cast randomOffset)[2]), ((cast offset)[3] + (cast randomOffset)[3])] : Array<Float>))));
    }

    @:hashAbi("F773E3080940B961F")
    public function GetRandomInCircle(radius:Float):Vector3
    {
        var radialRandom:cppbindings.C1A00019C = main.env.ground_effect.GroundEffectManager.Random;
        var weight:StdTypes.Float = (1 - lua.Math.pow(({
            var includeMaxRange:StdTypes.Bool = true;
            if ((includeMaxRange == null)) includeMaxRange = true;
            radialRandom.f52C8AF50(1, includeMaxRange);
        }), 2));
        var angularRandom:cppbindings.C1A00019C = main.env.ground_effect.GroundEffectManager.Random;
        var angle:StdTypes.Float = ({
            var includeMaxRange:StdTypes.Bool = false;
            if ((includeMaxRange == null)) includeMaxRange = true;
            angularRandom.f52C8AF50((lua.Math.pi * 2), includeMaxRange);
        });
        return ({
            var x:StdTypes.Float = ((lua.Math.cos(angle) * radius) * weight);
            var z:StdTypes.Float = ((lua.Math.sin(angle) * radius) * weight);
            var vectorValues:lua.Table<Int, Float>;
            vectorValues = (lua.Table.create(([x, ((0 * radius) * weight), z] : Array<Float>)));
            cast (cast vectorValues);
        });
    }

    @:hashAbi("FA6E1FB0F56DFB610")
    public function calcRay(rayPos:Vector3):Dynamic
    {
        var requester:cppbindings.C99578B50 = this.m_raycastRequester;
        {
            var st:lua.Table<Int, Float> = ((lua.Table.create(([(cast rayPos)[1], ((cast rayPos)[2] + 500), (cast rayPos)[3]] : Array<Float>))));
            var ed:lua.Table<Int, Float> = ((lua.Table.create(([(cast rayPos)[1], ((cast rayPos)[2] - 500), (cast rayPos)[3]] : Array<Float>))));
            var targetLayer:StdTypes.Int = cppbindings.CC36FA395.f054CE09C();
            requester.f5905395E((cast st)[1], (cast st)[2], (cast st)[3], (cast ed)[1], (cast ed)[2], (cast ed)[3], targetLayer, 1, false);
        };
        return null;
    }
}
