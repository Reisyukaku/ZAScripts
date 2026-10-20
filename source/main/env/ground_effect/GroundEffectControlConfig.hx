package main.env.ground_effect;

import cppbindings.C465FF34C as PSTable;
import main.util.PSTableAccessor;

@:keep
@:chunk("main")
@:hashAbi("C6F3E782FAF30D435")
@:expose("C6F3E782FAF30D435")
class GroundEffectControlConfig
{
    @:abiSlot(1)
    public var m_prop:PSTable;

    public function new(?ps:PSTable)
    {
        this.m_prop = ps;
    }

    @:hashAbi("FF1141E8D00F94EDE")
    public function get_m_generateProperty():Dynamic
    {
        return main.util.PSTableAccessor.GetTable(this.m_prop, "generate");
    }
}
