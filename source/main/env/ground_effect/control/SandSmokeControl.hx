package main.env.ground_effect.control;

import main.env.ground_effect.control.SmokeControlBase;

@:keep
@:chunk("main")
@:hashAbi("C4C726895FF1578F9")
@:expose("C4C726895FF1578F9")
class SandSmokeControl extends SmokeControlBase
{
    public function new(?owner:Dynamic, ?config:Dynamic, ?generator:Dynamic)
    {
        super(owner, config, generator);
    }

    @:hashAbi("F7A3D296366E973CB")
    public override function Initialize():Dynamic
    {
        super.Initialize();
        this.m_raycastRequester.f770D9A62("attr_suna_sabaku");
        return null;
    }
}
