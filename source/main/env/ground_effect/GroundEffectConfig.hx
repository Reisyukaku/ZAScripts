package main.env.ground_effect;

import cppbindings.C465FF34C as PSTable;
import main.util.PSTableAccessor;

@:keep
@:chunk("main")
@:hashAbi("C93A0ED567E185F6C")
@:expose("C93A0ED567E185F6C")
class GroundEffectConfig
{
    @:abiSlot(1)
    public var m_prop:PSTable;

    public function new(?ps:PSTable)
    {
        this.m_prop = ps;
    }

    @:hashAbi("FEA8D61AE27B94198")
    public function get_Raindrops():Dynamic
    {
        return new main.env.ground_effect.GroundEffectRainDropConfigs(main.util.PSTableAccessor.GetTable(this.m_prop, "raindrops"));
    }

    @:hashAbi("FB5A5B21F094FB77B")
    public function get_SmokeFog():Dynamic
    {
        return new main.env.ground_effect.GroundEffectSmokeFogConfig(main.util.PSTableAccessor.GetTable(this.m_prop, "smoke_fog"));
    }

    @:hashAbi("F2C5FD5EC2EC0D113")
    public function get_SandSmoke():Dynamic
    {
        return new main.env.ground_effect.GroundEffectSandSmokeConfig(main.util.PSTableAccessor.GetTable(this.m_prop, "sand_smoke"));
    }

    @:hashAbi("F25DBE1FC737C3AE4")
    public function get_SnowSmoke():Dynamic
    {
        return new main.env.ground_effect.GroundEffectSnowSmokeConfig(main.util.PSTableAccessor.GetTable(this.m_prop, "snow_smoke"));
    }

    @:hashAbi("F31291A4DAEA7FF28")
    public function get_CitySmoke():Dynamic
    {
        return new main.env.ground_effect.GroundEffectSnowSmokeConfig(main.util.PSTableAccessor.GetTable(this.m_prop, "city_smoke"));
    }

    @:hashAbi("FF815682BFB7FECF4")
    public function get_WindGrass():Dynamic
    {
        return new main.env.ground_effect.GroundEffectWindGrassConfig(main.util.PSTableAccessor.GetTable(this.m_prop, "wind_grass"));
    }
}
