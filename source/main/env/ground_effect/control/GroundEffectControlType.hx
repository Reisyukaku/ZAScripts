package main.env.ground_effect.control;

import main.env.ground_effect.GroundEffectConfig;
import main.env.ground_effect.control.generator.GroundEffectGenerator;
import main.env.ground_effect.control.generator.WindGrassEffectGenerator;

abstract GroundEffectControlType(Int) from Int to Int
{
}

@:keep
@:chunk("main")
@:hashAbi("CF55159DC26CADF9E")
@:expose("CF55159DC26CADF9E")
abstract GroundEffectControlTypeFunc(GroundEffectControlType)
{
    @:hashAbi("S988D7D0A4EEF693D")
    public static function Create(type:GroundEffectControlType, owner:Dynamic, config:GroundEffectConfig):GroundEffectControlBase
    {
        return switch (type)
        {
            case 0: new RaindropsControl(owner, config.get_Raindrops(), new GroundEffectGenerator(config.get_Raindrops()));
            case 1: new SmokeFogControl(owner, config.get_SmokeFog(), new GroundEffectGenerator(config.get_SmokeFog()));
            case 2: new SandSmokeControl(owner, config.get_SandSmoke(), new GroundEffectGenerator(config.get_SandSmoke()));
            case 3: new SnowSmokeControl(owner, config.get_SnowSmoke(), new GroundEffectGenerator(config.get_SnowSmoke()));
            case 4: new CitySmokeControl(owner, config.get_CitySmoke(), new GroundEffectGenerator(config.get_CitySmoke()));
            case 5: new WindGrassControl(owner, config.get_WindGrass(), new WindGrassEffectGenerator(config.get_WindGrass()));
            default: null;
        };
    }

    @:hashAbi("SD120FFE263E10BEC")
    public static function CreateAll(owner:Dynamic, config:GroundEffectConfig):Array<GroundEffectControlBase>
    {
        var controls = [for (type in 0...6) Create(type, owner, config)];
        for (control in controls)
        {
            control.Initialize();
        }
        return controls;
    }
}
