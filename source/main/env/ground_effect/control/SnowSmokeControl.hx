package main.env.ground_effect.control;

import main.env.ground_effect.control.SmokeControlBase;

@:keep
@:chunk("main")
@:hashAbi("C27CDAABC4F71901C")
@:expose("C27CDAABC4F71901C")
class SnowSmokeControl extends SmokeControlBase
{
    public function new(?owner:Dynamic, ?config:Dynamic, ?generator:Dynamic)
    {
        super(owner, config, generator);
    }

    @:hashAbi("F7A3D296366E973CB")
    public override function Initialize():Dynamic
    {
        super.Initialize();
        this.m_raycastRequester.f770D9A62("attr_yuki");
        return null;
    }
}
