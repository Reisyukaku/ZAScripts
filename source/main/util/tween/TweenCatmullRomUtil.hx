package main.util.tween;

import cppbindings.C3FB42236 as GameObject;
import cppbindings.CD5675BA5 as Quaternion;
import cppbindings.Vector3Values as Vector3;

@:keep
@:chunk("main")
@:hashAbi("C65A859C1CD1BAE1E")
@:expose("C65A859C1CD1BAE1E")
class TweenCatmullRomUtil
{
    @:abiSlot(1)
    public var obj:GameObject;

    @:abiSlot(2)
    public var pathCatmullRomUtil:PathCatmullRomUtil;

    @:abiSlot(3)
    public var isLockAt:Bool;

    public function new(obj:GameObject)
    {
        this.isLockAt = false;
        this.pathCatmullRomUtil = null;
        this.obj = obj;
    }

    @:hashAbi("F7CD5FEDB7A083576")
    public function SetUp(p:Array<Vector3>, option:TweenCatmullRomOption):Dynamic
    {
        this.isLockAt = option.isLockAt;
        this.pathCatmullRomUtil = new main.util.tween.PathCatmullRomUtil(p, option.closed, option.dividedCount);
        return null;
    }

    @:hashAbi("FC50C95E29E31BD98")
    public function DebugDrawLine():Dynamic
    {
        pathCatmullRomUtil.DebugDrawLine();
        return null;
    }

    @:hashAbi("FEF7A11DEF11D343C")
    public function SetCurveRT(t:Float):Dynamic
    {
        var point:lua.Table<Int, Float> = this.pathCatmullRomUtil.GetCurveValueNormalized(t);
        if ((point != null)) {
            if (this.isLockAt) {
                var rotation:cppbindings.CD5675BA5 = ({
                    var from:StdTypes.Null<lua.Table<Int, Float>> = ({
                        var _this:cppbindings.C3FB42236 = this.obj;
                        {
                            var v:cppbindings.Vec3 = _this.f750133BA();
                            {
                                var x:StdTypes.Float = v.x;
                                var y:StdTypes.Float = v.y;
                                var z:StdTypes.Float = v.z;
                                var vectorValues:lua.Table<Int, Float>;
                                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                                cast vectorValues;
                            };
                        };
                    });
                    var up:StdTypes.Null<lua.Table<Int, Float>> = ((lua.Table.create(([0, 1, 0] : Array<Float>))));
                    if ((from == null)) {
                        from = (cast ((lua.Table.create(([0, 0, 0] : Array<Float>)))));
                    };
                    if ((up == null)) {
                        up = (cast ((lua.Table.create(([0, 1, 0] : Array<Float>)))));
                    };
                    {
                        var from:lua.Table<Int, Float> = (cast from);
                        var up:lua.Table<Int, Float> = (cast up);
                        cppbindings.CD5675BA5.fB5706664((cast point)[1], (cast point)[2], (cast point)[3], (cast from)[1], (cast from)[2], (cast from)[3], (cast up)[1], (cast up)[2], (cast up)[3]);
                    };
                });
                {
                    var _this:cppbindings.C3FB42236 = this.obj;
                    var rotation:cppbindings.CD5675BA5 = cppbindings.CD5675BA5.fBE61A5F8(this.obj.f16155D9E(), rotation, this.pathCatmullRomUtil.nowlinePointsNormal);
                    _this.f24032F87(rotation);
                    rotation;
                };
            };
            {
                var _this:cppbindings.C3FB42236 = this.obj;
                {
                    _this.f8F2B0552((cast point)[1], (cast point)[2], (cast point)[3]);
                };
                point;
            };
        };
        return null;
    }
}
