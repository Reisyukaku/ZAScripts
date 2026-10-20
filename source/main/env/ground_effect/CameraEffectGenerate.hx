package main.env.ground_effect;

import cppbindings.C465FF34C as PSTable;

@:keep
@:chunk("main")
@:hashAbi("CFCC532A987EEAC69")
@:expose("CFCC532A987EEAC69")
class CameraEffectGenerate extends main.env.ground_effect.GroundEffectGenerate
{
    @:abiSlot(7)
    public var LRAngleRad:Float;

    @:abiSlot(8)
    public var LRAngle:Float;

    @:abiSlot(9)
    public var RayDistance:Float;

    @:abiSlot(10)
    public var NeedGenerateHitNum:Int;

    @:abiSlot(11)
    public var AllDestroyInterval:Float;

    public function new(?ps:PSTable)
    {
        super(ps);
        this.set_LRAngle(main.util.PSTableAccessor.GetFloat(ps, "left_and_right_angle"));
        this.set_RayDistance(main.util.PSTableAccessor.GetFloat(ps, "ray_distance"));
        this.set_NeedGenerateHitNum(main.util.PSTableAccessor.GetInt(ps, "need_generate_ray_hit_num"));
        this.set_AllDestroyInterval(main.util.PSTableAccessor.GetFloat(ps, "all_destroy_interval"));
    }

    @:hashAbi("F50AFD9E6451513F5")
    public function set_LRAngle(v:Float):Float
    {
        LRAngle = v >= 0 ? v : 0;
        LRAngleRad = ((LRAngle / 360.0) * 2) * lua.Math.pi;
        return LRAngle;
    }

    @:hashAbi("FC9C4C1A6111B900B")
    public function set_RayDistance(v:Float):Float
    {
        RayDistance = v >= 0 ? v : 0;
        return RayDistance;
    }

    @:hashAbi("F206D6D51E91AFDB8")
    public function set_NeedGenerateHitNum(v:Int):Int
    {
        NeedGenerateHitNum = v >= 0 ? v : 0;
        return NeedGenerateHitNum;
    }

    @:hashAbi("F8EC9B01C9D0E0E1E")
    public function set_AllDestroyInterval(v:Float):Float
    {
        AllDestroyInterval = v >= 0 ? v : 0;
        return AllDestroyInterval;
    }
}
