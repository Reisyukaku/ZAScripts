package main.env.ground_effect;

import cppbindings.C465FF34C as PSTable;

@:keep
@:chunk("main")
@:hashAbi("C967F1FA48596AFC5")
@:expose("C967F1FA48596AFC5")
class GroundEffectGenerate
{
    @:abiSlot(1)
    public var m_prop:PSTable;

    @:abiSlot(2)
    public var Offset:Float;

    @:abiSlot(3)
    public var Radius:Float;

    @:abiSlot(4)
    public var RayInterval:Float;

    @:abiSlot(5)
    public var RayNum:Int;

    @:abiSlot(6)
    public var InstanceMax:Int;

    public function new(?ps:PSTable)
    {
        this.m_prop = main.util.PSTableAccessor.GetTable(ps, "generate");
        this.set_Offset(main.util.PSTableAccessor.GetFloat(this.m_prop, "offset"));
        this.set_Radius(main.util.PSTableAccessor.GetFloat(this.m_prop, "radius"));
        this.set_RayInterval(main.util.PSTableAccessor.GetFloat(this.m_prop, "ray_interval"));
        this.set_RayNum(main.util.PSTableAccessor.GetInt(this.m_prop, "ray_num"));
        this.set_InstanceMax(main.util.PSTableAccessor.GetInt(this.m_prop, "max_instance"));
    }

    @:hashAbi("F2C44FC5396882C8F")
    public function set_Offset(v:Float):Float
    {
        Offset = v;
        return Offset;
    }

    @:hashAbi("FD184842EA06397CA")
    public function set_Radius(v:Float):Float
    {
        Radius = v >= 0 ? v : 0;
        return Radius;
    }

    @:hashAbi("FE975B696E2AA10A9")
    public function set_RayInterval(v:Float):Float
    {
        RayInterval = v >= 0 ? v : 0;
        return RayInterval;
    }

    @:hashAbi("F59B7474AD7CE6070")
    public function set_RayNum(v:Int):Int
    {
        RayNum = v >= 0 ? v : 0;
        return RayNum;
    }

    @:hashAbi("F5580B3E7564745A7")
    public function set_InstanceMax(v:Int):Int
    {
        InstanceMax = v >= 0 ? v : 0;
        return InstanceMax;
    }
}
