package main.env.ground_effect.control.generator;

@:keep
@:chunk("main")
@:hashAbi("C1B31858F892D5657")
@:expose("C1B31858F892D5657")
class EffectGeneratorBase
{
    @:abiSlot(1)
    public var m_raycastRequester:Dynamic;

    public function new(?config:Dynamic)
    {
        var controlConfig:main.env.ground_effect.GroundEffectControlConfig = config;
        this.SetProperty(controlConfig.m_prop);
    }

    @:hashAbi("F55D42F375E410C98")
    public function SetRayCastRequester(?v:Dynamic):Dynamic
    {
        m_raycastRequester = v;
        return null;
    }

    @:hashAbi("FC72763F5ABB22644")
    public function CheckInstanceNum(?instanceNum:Dynamic):Dynamic
    {
        return true;
    }

    @:hashAbi("FD5D2669AEC5C28FF")
    public function IsOnGenerate(?instanceNum:Dynamic):Dynamic
    {
        return !lua.abi.Host.truthy(CheckInstanceNum(instanceNum));
    }

    @:hashAbi("F2EF5CF5F7AE242BD")
    public function IsTerminateAlRayCastRequest(?instanceNum:Dynamic):Dynamic
    {
        return CheckInstanceNum(instanceNum);
    }

    @:hashAbi("FED89B77B7E80512A")
    public function SetProperty(?ps:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("F9AA4F70E3E01F86F")
    public function OnGenerate(?camera:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("F03C3FD12F7D1656D")
    public function OnCheckDestroyInstance(?args:Dynamic, ?instance:Dynamic, ?instanceNum:Dynamic):Dynamic
    {
        return false;
    }

    @:hashAbi("FBBC858D8D942D2D6")
    public function OnCheckDestroyAllInstance(?args:Dynamic):Dynamic
    {
        return false;
    }
}
