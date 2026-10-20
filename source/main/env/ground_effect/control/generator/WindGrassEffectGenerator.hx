package main.env.ground_effect.control.generator;

import cppbindings.C99578B50 as AsyncRayCastRequester;
import cppbindings.C712737ED as AsyncRayCastResult;

@:keep
@:chunk("main")
@:hashAbi("C3E2CCD54ED5431DE")
@:expose("C3E2CCD54ED5431DE")
class WindGrassEffectGenerator extends CameraEffectGenerator
{
    @:abiSlot(4)
    public var slot4:Dynamic;

    @:abiSlot(5)
    public var slot5:Dynamic;

    @:abiSlot(6)
    public var m_raycastResultList:haxe.ds.List<AsyncRayCastResult>;

    public function new(?config:Dynamic)
    {
        super(config);
        this.m_raycastResultList = new haxe.ds.List();
    }

    @:hashAbi("F9AA4F70E3E01F86F")
    public override function OnGenerate(?camera:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("FD5D2669AEC5C28FF")
    public override function IsOnGenerate(?instanceNum:Dynamic):Dynamic
    {
        return true;
    }

    @:hashAbi("F2EF5CF5F7AE242BD")
    public override function IsTerminateAlRayCastRequest(?instanceNum:Dynamic):Dynamic
    {
        return (this.m_raycastResultList.length >= 5);
    }

    @:hashAbi("F35ABD8F89DBAF855")
    public function OnCalcGeneratePosition(?ray:AsyncRayCastResult):Dynamic
    {
        this.m_raycastResultList.add(ray);
        var hitCount:StdTypes.Int = 0;
        var index:StdTypes.Int = 0;
        for (result in this.m_raycastResultList.iterator()) {
            if ((index++ == 0)) {
                if ((result.f9C4A89F4() != 0)) {
                    var requester:cppbindings.C99578B50 = this.m_raycastRequester;
                    requester.f19BE6FDF();
                    return null;
                };
            } else {
                hitCount++;
                var property:main.env.ground_effect.CameraEffectGenerate = this.Property;
                if ((hitCount >= property.NeedGenerateHitNum)) {
                    var requester:cppbindings.C99578B50 = this.m_raycastRequester;
                    requester.f19BE6FDF();
                    return ({
                        var _this:cppbindings.CA877D16F = this.m_raycastResultList.first().f07F620A3();
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
                };
            };
        };
        return null;
    }

    @:hashAbi("F03C3FD12F7D1656D")
    public override function OnCheckDestroyInstance(?args:Dynamic, ?instance:Dynamic, ?instanceNum:Dynamic):Dynamic
    {
        return !IsHitNumGenerateCondition();
    }

    @:hashAbi("F8EC154CF140FB5EE")
    public function IsHitNumGenerateCondition():Bool
    {
        var hitCount:StdTypes.Int = 0;
        for (result in this.m_raycastResultList.iterator()) {
            if ((result.f9C4A89F4() != 0)) {
                hitCount++;
                var property:main.env.ground_effect.CameraEffectGenerate = this.Property;
                if ((hitCount >= property.NeedGenerateHitNum)) {
                    return true;
                };
            };
        };
        return false;
    }
}
