package main.env.ground_effect;

import ext.pe.SceneObjectBehavior;
import cppbindings.Vector3Values as Vector3;
import cppbindings.C016374C1 as SceneObject;
import cppbindings.C7B88F8F8 as PropertySheetComponent;
import cppbindings.CCF781FB6 as ScriptComponent;
import main.env.ground_effect.control.GroundEffectControlBase;
import main.env.ground_effect.control.GroundEffectControlType.GroundEffectControlTypeFunc;

@:keep
@:chunk("main")
@:hashAbi("CCFAFBD3A1EB693D9")
@:expose("CCFAFBD3A1EB693D9")
class GroundEffectManager extends SceneObjectBehavior
{
    @:abiSlot(2)
    public var args:{elapsedSeconds:Float, camera:{pos:Vector3, yaw:Float}} =
    { elapsedSeconds : 0.0, camera : { pos : ((lua.Table.create(([0, 0, 0] : Array<Float>)))), yaw : 0.0 } };

    @:hashAbi("S975EF31EFEB9CFE8")
    public static var s_control:Array<GroundEffectControlBase>;

    @:hashAbi("S8D4787AC41EA02E5")
    public static var s_config:GroundEffectConfig;

    @:hashAbi("S5BA2452F2C0D1B9D")
    public static var UPDATE_FREQUENCY:Int = 4;

    @:hashAbi("SF1C9BF636E0F4F06")
    public static var IsSetup:Bool = false;

    @:hashAbi("SF01AF38CFB48F8C2")
    public static var Random:cppbindings.C1A00019C;

    @:hashAbi("SEA2DD64AAC13D642")
    public static var s_owner:SceneObject;

    @:hashAbi("SC4E5FAABBD98AAF3")
    public static var Scene:cppbindings.CA042DA13;

    public function new(?obj:Dynamic)
    {
        super(obj);
    }

    @:hashAbi("SFDEB82E4C34FE418")
    public static function GetControl(?type:Dynamic):Dynamic
    {
        return s_control == null ? null : s_control[type];
    }

    @:hashAbi("S12F63EE47FFCB183")
    public static function Suspend():Dynamic
    {
        if ((main.env.ground_effect.GroundEffectManager.s_owner != null)) {
            main.env.ground_effect.GroundEffectManager.s_owner.fBE3B2D3B();
        };
        return null;
    }

    @:hashAbi("S3C93DF9C47B1912A")
    public static function Resume():Dynamic
    {
        if ((main.env.ground_effect.GroundEffectManager.s_owner != null)) {
            main.env.ground_effect.GroundEffectManager.s_owner.f47BAE49D();
        };
        return null;
    }

    @:hashAbi("F7C68FEDB79AB6396")
    public override function Setup(context:Dynamic):Void
    {
        super.Setup(context);
        main.env.ground_effect.GroundEffectManager.s_owner = this.SceneObject;
        var properties:StdTypes.Null<cppbindings.C7B88F8F8> = cppbindings.C7B88F8F8.fB41FD22F(this.SceneObject);
        if ((properties != null)) {
            main.env.ground_effect.GroundEffectManager.s_config = new main.env.ground_effect.GroundEffectConfig(({
                var i:UInt = 0;
                if ((i == null)) i = 0;
                properties.f287946D6(i);
            }));
        } else {
            main.env.ground_effect.GroundEffectManager.s_config = new main.env.ground_effect.GroundEffectConfig();
        };
        main.env.ground_effect.GroundEffectManager.s_control = main.env.ground_effect.control.GroundEffectControlTypeFunc.CreateAll(main.env.ground_effect.GroundEffectManager.s_owner, main.env.ground_effect.GroundEffectManager.s_config);
        main.env.ground_effect.GroundEffectManager.IsSetup = true;
        var owner:cppbindings.C016374C1 = this.SceneObject;
        main.env.ground_effect.GroundEffectManager.Scene = owner.f462C9B70();
        main.env.ground_effect.GroundEffectManager.Random = cppbindings.C1A00019C.f101D811F();
        {
            var _this:cppbindings.C1A00019C = main.env.ground_effect.GroundEffectManager.Random;
            _this.f8C8B6BB6();
        };
        cppbindings.CCF781FB6.fB41FD22F(this.SceneObject).f024ADB0D(main.env.ground_effect.GroundEffectManager.UPDATE_FREQUENCY);
    }

    @:hashAbi("FE94F3E13286232CF")
    public override function PreUpdate(context:Dynamic):Void
    {
    }
}
