package main.env.field_effect;

import ext.pe.SceneObjectBehavior;
import cppbindings.C016374C1 as SceneObject;
import cppbindings.CA042DA13 as Scene;
import cppbindings.CCF781FB6 as ScriptComponent;
import cppbindings.CE8D61D7D as ParticleComponent;
import main.util.PSTableAccessor;
import haxe.ds.List;

@:keep
@:chunk("main")
@:hashAbi("C255DA869B696FA31")
@:expose("C255DA869B696FA31")
class FieldEffectSwitcher extends SceneObjectBehavior
{
    @:hashAbi("SC8223E31D3163519")
    public static var s_impl:Impl = new Impl();

    public function new(?obj:SceneObject)
    {
        super(obj);
    }

    @:hashAbi("SECC11DA9529126F4")
    public static function UnregistAreaEffect(?obj:SceneObject):Dynamic
    {
        main.env.field_effect.FieldEffectSwitcher.s_impl.UnregistEffect(obj);
        return null;
    }

    @:hashAbi("S486445C18EB4C83D")
    public static function FieldEffectSwitcher(?obj:SceneObject, ?scene:Scene, ?enable:Bool):Dynamic
    {
        main.env.field_effect.FieldEffectSwitcher.s_impl.RegistEffect(obj);
        return true;
    }

    @:hashAbi("F7C68FEDB79AB6396")
    public override function Setup(context:Dynamic):Void
    {
        var script:StdTypes.Null<cppbindings.CCF781FB6> = cppbindings.CCF781FB6.fB41FD22F(this.SceneObject);
        if ((script != null)) {
            script.f024ADB0D(29);
        };
        main.env.field_effect.FieldEffectSwitcher.s_impl.Initialize();
    }

    @:hashAbi("FE94F3E13286232CF")
    public override function PreUpdate(context:Dynamic):Void
    {
        s_impl.Update();
    }
}

@:keep
@:chunk("main")
@:hashAbi("C3BB535305A9A1B98")
@:expose("C3BB535305A9A1B98")
private class Impl
{
    @:abiSlot(1)
    public var m_unsetupEffectList:List<EffectEntry>;

    @:abiSlot(2)
    public var m_setupEffectList:List<EffectEntry>;

    @:abiSlot(3)
    public var m_updateSwitch:Bool;

    public function new()
    {
        m_updateSwitch = false;
        m_setupEffectList = new List();
        m_unsetupEffectList = new List();
    }

    @:hashAbi("F7A3D296366E973CB")
    public function Initialize():Dynamic
    {
        return null;
    }

    @:hashAbi("FEB6685558281F194")
    public function Update(?arg0:Dynamic):Dynamic
    {
        if (!this.m_updateSwitch) {
            this.m_updateSwitch = true;
            return null;
        };
        this.m_updateSwitch = false;
        for (effect in this.m_setupEffectList.iterator()) {
            if ((effect.obj == null)) {
                this.m_setupEffectList.remove(effect);
            } else {
                if (!effect.obj.f9D8BC178()) {
                    this.m_setupEffectList.remove(effect);
                    this.m_unsetupEffectList.add(effect);
                };
            };
        };
        return null;
    }

    @:hashAbi("F970217BDDC4A3AC8")
    public function OnWeatherChanged(?prevType:Dynamic, ?currentType:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("F7849474BBE799E86")
    public function RegistEffect(?obj:SceneObject):Dynamic
    {
        if (({
            var a:UInt = obj.f1A1210C4().f29A7E78E();
            (cast a) == 0;
        })) {
            return null;
        };
        this.removeEffect(obj);
        var effect:EffectEntry = { obj : obj };
        var data:cppbindings.C465FF34C = obj.f1A1210C4();
        var timeCondition:StdTypes.Null<cppbindings.C465FF34C> = main.util.PSTableAccessor.GetTable(data, "timeCondition");
        var beginSeconds:StdTypes.Float = ((main.util.PSTableAccessor.GetInt(timeCondition, "begin") % 24) * 3600);
        var endSeconds:StdTypes.Float = ((main.util.PSTableAccessor.GetInt(timeCondition, "end") % 24) * 3600);
        if ((beginSeconds != endSeconds)) {
            effect.timeCondition = { begin : beginSeconds, end : endSeconds };
        };
        main.util.PSTableAccessor.IterateEnumList(main.util.PSTableAccessor.GetTable(data, "weatherCondition"), "targetWeather", function(name:String, weather:Dynamic):StdTypes.Void {
            if ((effect.weatherCondition == null)) {
                effect.weatherCondition = { targetWeather : [] };
            };
            var targetWeather:Array<StdTypes.Int> = effect.weatherCondition.targetWeather;
            var weatherType:StdTypes.Int = (cast(weather, StdTypes.Int));
            if ((targetWeather.indexOf(weatherType) < 0)) {
                targetWeather.push(weatherType);
            };
        });
        effect.isFade = true;
        this.m_unsetupEffectList.add(effect);
        return null;
    }

    @:hashAbi("FF066E66FCA5B711D")
    public function UnregistEffect(?obj:SceneObject):Dynamic
    {
        this.removeEffect(obj);
        return null;
    }

    @:hashAbi("FA51B2B51A8BB964C")
    public function removeEffect(?obj:SceneObject):Dynamic
    {
        for (effect in this.m_setupEffectList.iterator()) {
            if (((effect.obj != null) && (effect.obj.fE9C29DA1() != obj.fE9C29DA1()))) {
                continue;
            };
            this.m_setupEffectList.remove(effect);
        };
        for (effect in this.m_unsetupEffectList.iterator()) {
            if (((effect.obj != null) && (effect.obj.fE9C29DA1() != obj.fE9C29DA1()))) {
                continue;
            };
            this.m_unsetupEffectList.remove(effect);
        };
        var particle:StdTypes.Null<cppbindings.CE8D61D7D> = cppbindings.CE8D61D7D.fB41FD22F(obj);
        if ((particle != null)) {
            particle.f61A204B1();
        };
        return null;
    }
}

private typedef EffectEntry =
{
    var obj:SceneObject;
    @:optional var timeCondition:{begin:Float, end:Float};
    @:optional var weatherCondition:{targetWeather:Array<Int>};
    @:optional var isFade:Bool;
}
