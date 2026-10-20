package main.env.ground_effect.control;

import main.env.ground_effect.control.SmokeControlBase;

@:keep
@:chunk("main")
@:hashAbi("C24A0EE9DA3D20C83")
@:expose("C24A0EE9DA3D20C83")
class SmokeFogControl extends SmokeControlBase
{
    public function new(?owner:Dynamic, ?config:Dynamic, ?generator:Dynamic)
    {
        super(owner, config, generator);
    }

    @:hashAbi("F7A3D296366E973CB")
    public override function Initialize():Dynamic
    {
        super.Initialize();
        this.m_raycastRequester.fBB265303("attr_suna_sabaku");
        this.m_raycastRequester.fBB265303("attr_yuki");
        this.m_raycastRequester.fBB265303("attr_water");
        return null;
    }
}
