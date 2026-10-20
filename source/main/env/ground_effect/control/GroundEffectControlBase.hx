package main.env.ground_effect.control;

import cppbindings.C99578B50 as AsyncRayCastRequester;
import cppbindings.C712737ED as AsyncRayCastResult;
import cppbindings.C451059A3 as ObjectTemplate;
import haxe.ds.List;
import main.env.ground_effect.GroundEffectControlConfig;
import main.env.ground_effect.control.generator.EffectGeneratorBase;
import main.util.PSTableAccessor;

@:keep
@:chunk("main")
@:hashAbi("CC706B7C02933B741")
@:expose("CC706B7C02933B741")
class GroundEffectControlBase
{
    @:abiSlot(1)
    public var m_template:ObjectTemplate;

    @:abiSlot(2)
    public var slot2:Dynamic;

    @:abiSlot(3)
    public var slot3:Dynamic;

    @:abiSlot(4)
    public var slot4:Dynamic;

    @:abiSlot(5)
    public var slot5:Dynamic;

    @:abiSlot(6)
    public var slot6:Dynamic;

    @:abiSlot(7)
    public var slot7:Dynamic;

    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var RayInterval:Float;

    @:abiSlot(10)
    public var m_disable:Bool;

    @:abiSlot(11)
    public var slot11:Dynamic;

    @:abiSlot(12)
    public var slot12:Dynamic;

    @:abiSlot(13)
    public var m_generateTimer:Float;

    @:abiSlot(14)
    public var m_instances:List<Dynamic>;

    @:abiSlot(15)
    public var m_instantiating:List<Dynamic>;

    @:abiSlot(16)
    public var m_effectGenerator:EffectGeneratorBase;

    @:abiSlot(17)
    public var slot17:Dynamic;

    @:abiSlot(18)
    public var slot18:Dynamic;

    @:abiSlot(19)
    public var m_raycastRequester:AsyncRayCastRequester;

    @:hashAbi("FD1586EE049895BCD")
    public var m_onGenerateFunc:Dynamic->Dynamic;

    public function new(?owner:cppbindings.C016374C1, ?config:GroundEffectControlConfig, ?generator:EffectGeneratorBase)
    {
        this.m_effectGenerator = null;
        this.m_instantiating = new haxe.ds.List();
        this.m_instances = new haxe.ds.List();
        this.m_generateTimer = 0;
        this.m_disable = false;
        this.m_raycastRequester = cppbindings.C99578B50.f5B6373D5(owner, ({
            var c:Class<Dynamic> = Type.getClass(this);
            untyped __define_feature__("Type.getClassName", untyped (cast c : Dynamic).__name__);
        }));
        this.m_raycastRequester.f091D43D4(this.onRayCastResult);
        this.m_effectGenerator = generator;
        this.m_effectGenerator.SetRayCastRequester(this.m_raycastRequester);
        this.m_generateTimer = main.util.PSTableAccessor.GetFloat(config.get_m_generateProperty(), "ray_interval");
        this.RayInterval = this.m_generateTimer;
        this.setConfig(config);
        this.m_onGenerateFunc = this.onGenerateFunc_WaitTemplate;
    }

    @:hashAbi("F7A3D296366E973CB")
    public function Initialize():Dynamic
    {
        return null;
    }

    @:hashAbi("FF46CAC5AD20DE9C9")
    public function onGenerateFunc_WaitTemplate(?args:Dynamic):Dynamic
    {
        if (((this.m_template != null) && this.m_template.f900312E7())) {
            if (this.m_effectGenerator.IsOnGenerate((this.m_instances.length + this.m_instantiating.length))) {
                this.m_effectGenerator.OnGenerate(untyped (cast args : Dynamic).camera);
            };
            this.m_onGenerateFunc = this.onGenerateFunc_Main;
        };
        return null;
    }

    @:hashAbi("F5046DF6C530E493F")
    public function onGenerateFunc_Main(?args:Dynamic):Dynamic
    {
        if (m_effectGenerator.IsOnGenerate(m_instances.length + m_instantiating.length))
        {
            m_effectGenerator.OnGenerate(args.camera);
        }
        return null;
    }

    @:hashAbi("F830078632948B722")
    public function onRayCastResult(v:AsyncRayCastResult):Bool
    {
        if ((this.m_disable == true)) {
            return false;
        };
        this.calcInstaniatePos(v);
        this.m_effectGenerator.CheckInstanceNum((this.m_instances.length + this.m_instantiating.length));
        if (this.m_effectGenerator.IsTerminateAlRayCastRequest((this.m_instances.length + this.m_instantiating.length))) {
            this.m_raycastRequester.f19BE6FDF();
        };
        return false;
    }

    @:hashAbi("FB5E33D4F9269AF61")
    public function setConfig(?config:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("F669F56455D737060")
    public function calcInstaniatePos(?result:AsyncRayCastResult):Dynamic
    {
        return ({
            var _this:cppbindings.CA877D16F = result.f07F620A3();
            {
                var v:cppbindings.Vec3 = _this.f1B877572();
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues:lua.Table<Int, Float>;
                    vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues);
                };
            };
        });
    }
}
