package main.util;

import cppbindings.Vector2Values as Vector2;
import cppbindings.Vector3Values as Vector3;
import cppbindings.Vector4Values as Vector4;
import cppbindings.CD5675BA5 as Quaternion;

@:keep
@:chunk("main")
@:hashAbi("CD9AE7C27B00EB066")
@:expose("CD9AE7C27B00EB066")
class Math
{
    @:hashAbi("SFB8A67CFE7F5605D")
    public static var EPSILON:Dynamic = 1e-08;

    @:hashAbi("S05B90B9B5A6DE6BC")
    public static function Clamp(?v:Dynamic, ?mn:Dynamic, ?mx:Dynamic):Dynamic
    {
        if (v < mn)
        {
            v = mn;
        }
        if (mx < v)
        {
            v = mx;
        }
        return v;
    }

    @:hashAbi("S3FCFEC45AD1F1905")
    public static function ClampInt(?v:Dynamic, ?mn:Dynamic, ?mx:Dynamic):Dynamic
    {
        if (v < mn)
        {
            v = mn;
        }
        if (mx < v)
        {
            v = mx;
        }
        return v;
    }

    @:hashAbi("SF5188CAE4725F031")
    public static function DegreeToRadian(?deg:Dynamic):Dynamic
    {
        return deg / 360.0 * 2 * lua.Math.pi;
    }

    @:hashAbi("S0F3397CD4738809E")
    public static function DegreeToRadianVec3(?deg:Vector3):Dynamic
    {
        return ((lua.Table.create(([((((cast deg)[1] / 360.0) * 2) * lua.Math.pi), ((((cast deg)[2] / 360.0) * 2) * lua.Math.pi), ((((cast deg)[3] / 360.0) * 2) * lua.Math.pi)] : Array<Float>))));
    }

    @:hashAbi("S3BAEFE1C86362AED")
    public static function RadianToDegree(?rad:Dynamic):Dynamic
    {
        return rad / (2 * lua.Math.pi) * 360.0;
    }

    @:hashAbi("SFD01AA20E8E36D4A")
    public static function RadianToDegreeVec3(?deg:Vector3):Dynamic
    {
        return ((lua.Table.create(([(((cast deg)[1] / (2 * lua.Math.pi)) * 360.0), (((cast deg)[2] / (2 * lua.Math.pi)) * 360.0), (((cast deg)[3] / (2 * lua.Math.pi)) * 360.0)] : Array<Float>))));
    }

    @:hashAbi("S83677FF4EE3F1CBF")
    public static function GetVectorAngle(?v1:Vector3, ?v2:Vector3):Dynamic
    {
        var dot:StdTypes.Int = main.util.Math.Clamp(cppbindings.C7A48E3FC.f04EE1F22((cast (cast v1))[1], (cast (cast v1))[2], (cast (cast v1))[3], (cast v2)[1], (cast v2)[2], (cast v2)[3]), -1, 1);
        var cross:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = cppbindings.C7A48E3FC.f3D88C322((cast (cast v1))[1], (cast (cast v1))[2], (cast (cast v1))[3], (cast v2)[1], (cast v2)[2], (cast v2)[3]);
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
        var angle:StdTypes.Float = 0.0;
        if ((cppbindings.C7A48E3FC.fBD92E0EC((cast (cast cross))[1], (cast (cast cross))[2], (cast (cast cross))[3]) < 1.0E-4)) {
            if ((dot < 0)) {
                angle = lua.Math.pi;
            };
        } else {
            var axis:lua.Table<Int, Float> = ({
                var v:cppbindings.Vec3 = cppbindings.C7A48E3FC.fD9D3C136((cast cross)[1], (cast cross)[2], (cast cross)[3]);
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues3:lua.Table<Int, Float>;
                    vectorValues3 = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues3);
                };
            });
            var axisLengthSquared:StdTypes.Float = cppbindings.C7A48E3FC.fBD92E0EC((cast (cast axis))[1], (cast (cast axis))[2], (cast (cast axis))[3]);
            angle = lua.Math.acos(dot);
        };
        return angle;
    }

    @:hashAbi("S27BA7C7323C27960")
    public static function FromVectorRotation(?lhs:Vector3, ?rhs:Vector3, ?irregularAxis:Vector3):Dynamic
    {
        var dot:StdTypes.Int = main.util.Math.Clamp(cppbindings.C7A48E3FC.f04EE1F22((cast (cast lhs))[1], (cast (cast lhs))[2], (cast (cast lhs))[3], (cast rhs)[1], (cast rhs)[2], (cast rhs)[3]), -1, 1);
        var cross:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = cppbindings.C7A48E3FC.f3D88C322((cast (cast lhs))[1], (cast (cast lhs))[2], (cast (cast lhs))[3], (cast rhs)[1], (cast rhs)[2], (cast rhs)[3]);
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
        var angle:StdTypes.Float = 0.0;
        if ((cppbindings.C7A48E3FC.fBD92E0EC((cast (cast cross))[1], (cast (cast cross))[2], (cast (cast cross))[3]) <= 0)) {
            if ((dot < 0)) {
                angle = lua.Math.pi;
            };
            if ((irregularAxis == null)) {
                irregularAxis = ((lua.Table.create(([1, 0, 0] : Array<Float>))));
            };
            return cppbindings.CD5675BA5.fC1785368((cast irregularAxis)[1], (cast irregularAxis)[2], (cast irregularAxis)[3], angle);
        };
        var axis:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = cppbindings.C7A48E3FC.fD9D3C136((cast cross)[1], (cast cross)[2], (cast cross)[3]);
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues5:lua.Table<Int, Float>;
                vectorValues5 = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues5);
            };
        });
        var axisLengthSquared:StdTypes.Float = cppbindings.C7A48E3FC.fBD92E0EC((cast (cast axis))[1], (cast (cast axis))[2], (cast (cast axis))[3]);
        return ({
            var radian:StdTypes.Float = lua.Math.acos(dot);
            cppbindings.CD5675BA5.fC1785368((cast axis)[1], (cast axis)[2], (cast axis)[3], radian);
        });
    }

    @:hashAbi("SBDC8E35151EA22F3")
    public static function GetDistanceLineAndPoint(?A:Vector3, ?B:Vector3, ?P:Vector3):Dynamic
    {
        var direction:lua.Table<Int, Float> = ((lua.Table.create(([((cast B)[1] - (cast A)[1]), ((cast B)[2] - (cast A)[2]), ((cast B)[3] - (cast A)[3])] : Array<Float>))));
        var projection:StdTypes.Float = ({
            var vectorValues3:lua.Table<Int, Float> = ((lua.Table.create(([((cast P)[1] - (cast A)[1]), ((cast P)[2] - (cast A)[2]), ((cast P)[3] - (cast A)[3])] : Array<Float>))));
            cppbindings.C7A48E3FC.f04EE1F22((cast (cast vectorValues3))[1], (cast (cast vectorValues3))[2], (cast (cast vectorValues3))[3], (cast direction)[1], (cast direction)[2], (cast direction)[3]);
        });
        var fraction:StdTypes.Float = 0.0;
        if ((projection <= 0)) {
            fraction = 0;
        } else {
            var lengthSquared:StdTypes.Float = cppbindings.C7A48E3FC.f04EE1F22((cast (cast direction))[1], (cast (cast direction))[2], (cast (cast direction))[3], (cast direction)[1], (cast direction)[2], (cast direction)[3]);
            if ((projection >= lengthSquared)) {
                fraction = 1;
            } else {
                fraction = (projection / lengthSquared);
            };
        };
        return ((lua.Table.create(([((cast A)[1] + (((cast B)[1] - (cast A)[1]) * fraction)), ((cast A)[2] + (((cast B)[2] - (cast A)[2]) * fraction)), ((cast A)[3] + (((cast B)[3] - (cast A)[3]) * fraction))] : Array<Float>))));
    }

    @:hashAbi("SC734992E23457948")
    public static function SlerpQuat(?v1:Quaternion, ?v2:Quaternion, ?f:Dynamic):Dynamic
    {
        return cppbindings.CD5675BA5.fBE61A5F8(v1, v2, f);
    }

    @:hashAbi("S98FDC2A1611456E3")
    public static function IterativeSlerpQuat(?src:Quaternion, ?dst:Quaternion, ?f:Dynamic, ?n:Dynamic):Dynamic
    {
        var iteration:StdTypes.Int = 0;
        while ((iteration < n)) {
            iteration++;
            src = cppbindings.CD5675BA5.fBE61A5F8(src, dst, f);
        };
        return src;
    }

    @:hashAbi("S9487238A2BCBB744")
    public static function SlerpVector(?v1:Vector3, ?v2:Vector3, ?f:Dynamic):Dynamic
    {
        var targetRotation:cppbindings.CD5675BA5 = main.util.Math.FromVectorRotation(v1, v2, ((lua.Table.create(([0, 1, 0] : Array<Float>)))));
        var rotation:cppbindings.CD5675BA5 = cppbindings.CD5675BA5.fBE61A5F8(cppbindings.CD5675BA5.f0151A26E(), targetRotation, f);
        return ({
            var v:cppbindings.Vec3 = rotation.fCA247E7A((cast v1)[1], (cast v1)[2], (cast v1)[3]);
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues3:lua.Table<Int, Float>;
                vectorValues3 = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues3);
            };
        });
    }

    @:hashAbi("SCAD25230630F7BCB")
    public static function IterativeSlerpVector(?src:Vector3, ?dst:Vector3, ?f:Dynamic, ?n:Dynamic):Dynamic
    {
        var iteration:StdTypes.Int = 0;
        while ((iteration < n)) {
            iteration++;
            src = main.util.Math.SlerpVector(src, dst, f);
        };
        return src;
    }

    @:hashAbi("S78B917E98167EB14")
    public static function Equals(?v1:Dynamic, ?v2:Dynamic):Dynamic
    {
        return lua.Math.abs(v1 - v2) < EPSILON;
    }

    @:hashAbi("S69F5AAE71F5E3193")
    public static function IsZero(?v:Dynamic):Dynamic
    {
        return lua.Math.abs(v) < EPSILON;
    }

    @:hashAbi("SEC5E960387714AA4")
    public static function Sign(?v:Dynamic):Dynamic
    {
        if (lua.Math.abs(v) < EPSILON)
        {
            return 0.0;
        }
        if (v < 0)
        {
            return -1.0;
        }
        return 1.0;
    }

    @:hashAbi("SC32893984360DD68")
    public static function Lerp(?v1:Dynamic, ?v2:Dynamic, ?t:Dynamic):Dynamic
    {
        return (v2 - v1) * t + v1;
    }

    @:hashAbi("SE32A15096ACCF008")
    public static function LerpVec2(?v1:Vector2, ?v2:Vector2, ?t:Dynamic):Dynamic
    {
        return ((lua.Table.create(([((((cast v2)[1] - (cast v1)[1]) * t) + (cast v1)[1]), ((((cast v2)[2] - (cast v1)[2]) * t) + (cast v1)[2])] : Array<Float>))));
    }

    @:hashAbi("SE32A16096ACCF1BB")
    public static function LerpVec3(?v1:Vector3, ?v2:Vector3, ?t:Dynamic):Dynamic
    {
        return ((lua.Table.create(([((((cast v2)[1] - (cast v1)[1]) * t) + (cast v1)[1]), ((((cast v2)[2] - (cast v1)[2]) * t) + (cast v1)[2]), ((((cast v2)[3] - (cast v1)[3]) * t) + (cast v1)[3])] : Array<Float>))));
    }

    @:hashAbi("SE32A1B096ACCFA3A")
    public static function LerpVec4(?v1:Vector4, ?v2:Vector4, ?t:Dynamic):Dynamic
    {
        return ((lua.Table.create(([((((cast v2)[1] - (cast v1)[1]) * t) + (cast v1)[1]), ((((cast v2)[2] - (cast v1)[2]) * t) + (cast v1)[2]), ((((cast v2)[3] - (cast v1)[3]) * t) + (cast v1)[3]), ((((cast v2)[4] - (cast v1)[4]) * t) + (cast v1)[4])] : Array<Float>))));
    }

    @:hashAbi("S385945E59AB9CA09")
    public static function IterativeLerp(?src:Dynamic, ?dst:Dynamic, ?t:Dynamic, ?n:Dynamic):Dynamic
    {
        var iteration = 0;
        while (iteration < n)
        {
            iteration++;
            src = (dst - src) * t + src;
        }
        return src;
    }

    @:hashAbi("SF667EB15F51B1829")
    public static function IterativeLerpVec2(?src:Vector2, ?dst:Vector2, ?t:Dynamic, ?n:Dynamic):Dynamic
    {
        var iteration:StdTypes.Int = 0;
        while ((iteration < n)) {
            iteration++;
            src = ((lua.Table.create(([((((cast dst)[1] - (cast src)[1]) * t) + (cast src)[1]), ((((cast dst)[2] - (cast src)[2]) * t) + (cast src)[2])] : Array<Float>))));
        };
        return src;
    }

    @:hashAbi("SF667EA15F51B1676")
    public static function IterativeLerpVec3(?src:Vector3, ?dst:Vector3, ?t:Dynamic, ?n:Dynamic):Dynamic
    {
        var iteration:StdTypes.Int = 0;
        while ((iteration < n)) {
            iteration++;
            src = ((lua.Table.create(([((((cast dst)[1] - (cast src)[1]) * t) + (cast src)[1]), ((((cast dst)[2] - (cast src)[2]) * t) + (cast src)[2]), ((((cast dst)[3] - (cast src)[3]) * t) + (cast src)[3])] : Array<Float>))));
        };
        return src;
    }

    @:hashAbi("SF667ED15F51B1B8F")
    public static function IterativeLerpVec4(?src:Vector4, ?dst:Vector4, ?t:Dynamic, ?n:Dynamic):Dynamic
    {
        var iteration:StdTypes.Int = 0;
        while ((iteration < n)) {
            iteration++;
            src = ((lua.Table.create(([((((cast dst)[1] - (cast src)[1]) * t) + (cast src)[1]), ((((cast dst)[2] - (cast src)[2]) * t) + (cast src)[2]), ((((cast dst)[3] - (cast src)[3]) * t) + (cast src)[3]), ((((cast dst)[4] - (cast src)[4]) * t) + (cast src)[4])] : Array<Float>))));
        };
        return src;
    }

    @:hashAbi("S60329B020EE3A79A")
    public static function ClampMagnitude(?vec:Vector3, ?maxLength:Dynamic):Dynamic
    {
        var result:lua.Table<Int, Float> = ((lua.Table.create(([(cast vec)[1], (cast vec)[2], (cast vec)[3]] : Array<Float>))));
        if ((maxLength < cppbindings.C7A48E3FC.f92852F73((cast (cast result))[1], (cast (cast result))[2], (cast (cast result))[3]))) {
            result = ({
                var v:cppbindings.Vec3 = cppbindings.C7A48E3FC.fD9D3C136((cast result)[1], (cast result)[2], (cast result)[3]);
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues3:lua.Table<Int, Float>;
                    vectorValues3 = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues3);
                };
            });
            var lengthSquared:StdTypes.Float = cppbindings.C7A48E3FC.fBD92E0EC((cast (cast result))[1], (cast (cast result))[2], (cast (cast result))[3]);
            return ((lua.Table.create(([((cast result)[1] * maxLength), ((cast result)[2] * maxLength), ((cast result)[3] * maxLength)] : Array<Float>))));
        };
        return result;
    }

    @:hashAbi("SBA941559F53ECC9A")
    public static function InverseLerp(?v1:Dynamic, ?v2:Dynamic, ?v3:Dynamic):Dynamic
    {
        return (v3 - v1) / (v2 - v1);
    }

    @:hashAbi("S28102DAA82AC58FD")
    public static function Floor(?value:Dynamic, ?digits:Dynamic):Dynamic
    {
        value = lua.Math.pow(10, digits) * value;
        value = lua.Math.floor(value);
        return value / lua.Math.pow(10, digits);
    }

    @:hashAbi("S6E889CF9C9368AC0")
    public static function HermiteCurve(?p0:Vector3, ?p1:Vector3, ?v0:Vector3, ?v1:Vector3, ?t:Dynamic):Dynamic
    {
        return ((lua.Table.create(([(((((((((((cast p0)[1] * 2.0) + ((cast p1)[1] * -2.0)) + (cast v0)[1]) + (cast v1)[1]) * t) * t) * t) + (((((((cast p0)[1] * -3.0) + ((cast p1)[1] * 3.0)) + ((cast v0)[1] * -2.0)) - (cast v1)[1]) * t) * t)) + ((cast v0)[1] * t)) + (cast p0)[1]), (((((((((((cast p0)[2] * 2.0) + ((cast p1)[2] * -2.0)) + (cast v0)[2]) + (cast v1)[2]) * t) * t) * t) + (((((((cast p0)[2] * -3.0) + ((cast p1)[2] * 3.0)) + ((cast v0)[2] * -2.0)) - (cast v1)[2]) * t) * t)) + ((cast v0)[2] * t)) + (cast p0)[2]), (((((((((((cast p0)[3] * 2.0) + ((cast p1)[3] * -2.0)) + (cast v0)[3]) + (cast v1)[3]) * t) * t) * t) + (((((((cast p0)[3] * -3.0) + ((cast p1)[3] * 3.0)) + ((cast v0)[3] * -2.0)) - (cast v1)[3]) * t) * t)) + ((cast v0)[3] * t)) + (cast p0)[3])] : Array<Float>))));
    }

    @:hashAbi("S3EA310859987A429")
    public static function HermiteCurveTangent(?p0:Vector3, ?p1:Vector3, ?v0:Vector3, ?v1:Vector3, ?t:Dynamic):Dynamic
    {
        return ((lua.Table.create(([(((((((((cast p0)[1] * 6.0) + ((cast p1)[1] * -6.0)) + ((cast v0)[1] * 3.0)) + ((cast v1)[1] * 3.0)) * t) * t) + ((((((cast p0)[1] * -6.0) + ((cast p1)[1] * 6.0)) + ((cast v0)[1] * -4.0)) - ((cast v1)[1] * 2.0)) * t)) + (cast v0)[1]), (((((((((cast p0)[2] * 6.0) + ((cast p1)[2] * -6.0)) + ((cast v0)[2] * 3.0)) + ((cast v1)[2] * 3.0)) * t) * t) + ((((((cast p0)[2] * -6.0) + ((cast p1)[2] * 6.0)) + ((cast v0)[2] * -4.0)) - ((cast v1)[2] * 2.0)) * t)) + (cast v0)[2]), (((((((((cast p0)[3] * 6.0) + ((cast p1)[3] * -6.0)) + ((cast v0)[3] * 3.0)) + ((cast v1)[3] * 3.0)) * t) * t) + ((((((cast p0)[3] * -6.0) + ((cast p1)[3] * 6.0)) + ((cast v0)[3] * -4.0)) - ((cast v1)[3] * 2.0)) * t)) + (cast v0)[3])] : Array<Float>))));
    }

    @:hashAbi("SB705C912384302D1")
    public static function Catmull(?p0:Dynamic, ?p1:Dynamic, ?p2:Dynamic, ?p3:Dynamic, ?t:Dynamic):Dynamic
    {
        return (((-p0 + p1 * 3 - p2 * 3 + p3) * t * t * t + (p0 * 2 - p1 * 5 + p2 * 4 - p3) * t * t) + (-p0 + p2) * t + p1 * 2) * 0.5;
    }

    @:hashAbi("S58AFF2920558A3B1")
    public static function CatmullVec2(?p0:Vector2, ?p1:Vector2, ?p2:Vector2, ?p3:Vector2, ?t:Dynamic):Dynamic
    {
        return ((lua.Table.create(([((((((((((-(cast p0)[1] + ((cast p1)[1] * 3)) - ((cast p2)[1] * 3)) + (cast p3)[1]) * t) * t) * t) + (((((((cast p0)[1] * 2) - ((cast p1)[1] * 5)) + ((cast p2)[1] * 4)) - (cast p3)[1]) * t) * t)) + ((-(cast p0)[1] + (cast p2)[1]) * t)) + ((cast p1)[1] * 2)) * 0.5), ((((((((((-(cast p0)[2] + ((cast p1)[2] * 3)) - ((cast p2)[2] * 3)) + (cast p3)[2]) * t) * t) * t) + (((((((cast p0)[2] * 2) - ((cast p1)[2] * 5)) + ((cast p2)[2] * 4)) - (cast p3)[2]) * t) * t)) + ((-(cast p0)[2] + (cast p2)[2]) * t)) + ((cast p1)[2] * 2)) * 0.5)] : Array<Float>))));
    }

    @:hashAbi("S58AFF1920558A1FE")
    public static function CatmullVec3(?p0:Vector3, ?p1:Vector3, ?p2:Vector3, ?p3:Vector3, ?t:Dynamic):Dynamic
    {
        return ((lua.Table.create(([((((((((((-(cast p0)[1] + ((cast p1)[1] * 3)) - ((cast p2)[1] * 3)) + (cast p3)[1]) * t) * t) * t) + (((((((cast p0)[1] * 2) - ((cast p1)[1] * 5)) + ((cast p2)[1] * 4)) - (cast p3)[1]) * t) * t)) + ((-(cast p0)[1] + (cast p2)[1]) * t)) + ((cast p1)[1] * 2)) * 0.5), ((((((((((-(cast p0)[2] + ((cast p1)[2] * 3)) - ((cast p2)[2] * 3)) + (cast p3)[2]) * t) * t) * t) + (((((((cast p0)[2] * 2) - ((cast p1)[2] * 5)) + ((cast p2)[2] * 4)) - (cast p3)[2]) * t) * t)) + ((-(cast p0)[2] + (cast p2)[2]) * t)) + ((cast p1)[2] * 2)) * 0.5), ((((((((((-(cast p0)[3] + ((cast p1)[3] * 3)) - ((cast p2)[3] * 3)) + (cast p3)[3]) * t) * t) * t) + (((((((cast p0)[3] * 2) - ((cast p1)[3] * 5)) + ((cast p2)[3] * 4)) - (cast p3)[3]) * t) * t)) + ((-(cast p0)[3] + (cast p2)[3]) * t)) + ((cast p1)[3] * 2)) * 0.5)] : Array<Float>))));
    }

    @:hashAbi("S58AFF4920558A717")
    public static function CatmullVec4(?p0:Vector4, ?p1:Vector4, ?p2:Vector4, ?p3:Vector4, ?t:Dynamic):Dynamic
    {
        return ((lua.Table.create(([((((((((((-(cast p0)[1] + ((cast p1)[1] * 3)) - ((cast p2)[1] * 3)) + (cast p3)[1]) * t) * t) * t) + (((((((cast p0)[1] * 2) - ((cast p1)[1] * 5)) + ((cast p2)[1] * 4)) - (cast p3)[1]) * t) * t)) + ((-(cast p0)[1] + (cast p2)[1]) * t)) + ((cast p1)[1] * 2)) * 0.5), ((((((((((-(cast p0)[2] + ((cast p1)[2] * 3)) - ((cast p2)[2] * 3)) + (cast p3)[2]) * t) * t) * t) + (((((((cast p0)[2] * 2) - ((cast p1)[2] * 5)) + ((cast p2)[2] * 4)) - (cast p3)[2]) * t) * t)) + ((-(cast p0)[2] + (cast p2)[2]) * t)) + ((cast p1)[2] * 2)) * 0.5), ((((((((((-(cast p0)[3] + ((cast p1)[3] * 3)) - ((cast p2)[3] * 3)) + (cast p3)[3]) * t) * t) * t) + (((((((cast p0)[3] * 2) - ((cast p1)[3] * 5)) + ((cast p2)[3] * 4)) - (cast p3)[3]) * t) * t)) + ((-(cast p0)[3] + (cast p2)[3]) * t)) + ((cast p1)[3] * 2)) * 0.5), ((((((((((-(cast p0)[4] + ((cast p1)[4] * 3)) - ((cast p2)[4] * 3)) + (cast p3)[4]) * t) * t) * t) + (((((((cast p0)[4] * 2) - ((cast p1)[4] * 5)) + ((cast p2)[4] * 4)) - (cast p3)[4]) * t) * t)) + ((-(cast p0)[4] + (cast p2)[4]) * t)) + ((cast p1)[4] * 2)) * 0.5)] : Array<Float>))));
    }

    @:hashAbi("SF4E70B1E503D8CB2")
    public static function IterativeScale(?v:Dynamic, ?f:Dynamic, ?n:Dynamic):Dynamic
    {
        var iteration = 0;
        while (iteration < n)
        {
            iteration++;
            v = v * f;
        }
        return v;
    }

    @:hashAbi("S947EBF49836B643E")
    public static function IterativeScaleVec2(?v:Vector2, ?f:Dynamic, ?n:Dynamic):Dynamic
    {
        var iteration:StdTypes.Int = 0;
        while ((iteration < n)) {
            iteration++;
            v = ((lua.Table.create(([((cast v)[1] * f), ((cast v)[2] * f)] : Array<Float>))));
        };
        return v;
    }

    @:hashAbi("S947EC049836B65F1")
    public static function IterativeScaleVec3(?v:Vector3, ?f:Dynamic, ?n:Dynamic):Dynamic
    {
        var iteration:StdTypes.Int = 0;
        while ((iteration < n)) {
            iteration++;
            v = ((lua.Table.create(([((cast v)[1] * f), ((cast v)[2] * f), ((cast v)[3] * f)] : Array<Float>))));
        };
        return v;
    }

    @:hashAbi("S947EC149836B67A4")
    public static function IterativeScaleVec4(?v:Vector4, ?f:Dynamic, ?n:Dynamic):Dynamic
    {
        var iteration:StdTypes.Int = 0;
        while ((iteration < n)) {
            iteration++;
            v = ((lua.Table.create(([((cast v)[1] * f), ((cast v)[2] * f), ((cast v)[3] * f), ((cast v)[4] * f)] : Array<Float>))));
        };
        return v;
    }

    @:hashAbi("SF6B1543657D10AD3")
    public static function SmoothDampVector3(?current:Vector3, ?target:Vector3, ?currentVelocity:Vector3, ?smoothTime:Dynamic, ?maxSpeed:Dynamic, ?deltaTime:Dynamic):Dynamic
    {
        smoothTime = lua.Math.max(1.0E-4, smoothTime);
        var omega:StdTypes.Float = (2.0 / smoothTime);
        var step:StdTypes.Float = (omega * deltaTime);
        var decay:StdTypes.Float = (1.0 / (((1.0 + step) + ((0.48 * step) * step)) + (((0.235 * step) * step) * step)));
        var change:lua.Table<Int, Float> = ((lua.Table.create(([((cast current)[1] - (cast target)[1]), ((cast current)[2] - (cast target)[2]), ((cast current)[3] - (cast target)[3])] : Array<Float>))));
        var originalTarget:lua.Table<Int, Float> = ((lua.Table.create(([(cast target)[1], (cast target)[2], (cast target)[3]] : Array<Float>))));
        var maxChange:StdTypes.Float = (maxSpeed * smoothTime);
        var changeSquared:StdTypes.Float = ((((cast change)[1] * (cast change)[1]) + ((cast change)[2] * (cast change)[2])) + ((cast change)[3] * (cast change)[3]));
        if ((changeSquared > (maxChange * maxChange))) {
            var length:StdTypes.Float = lua.Math.sqrt(changeSquared);
            change = ((lua.Table.create(([(((cast change)[1] / length) * maxChange), (((cast change)[2] / length) * maxChange), (((cast change)[3] / length) * maxChange)] : Array<Float>))));
        };
        target = ((lua.Table.create(([((cast current)[1] - (cast change)[1]), ((cast current)[2] - (cast change)[2]), ((cast current)[3] - (cast change)[3])] : Array<Float>))));
        var tempX:StdTypes.Float = (((cast currentVelocity)[1] + (omega * (cast change)[1])) * deltaTime);
        var tempY:StdTypes.Float = (((cast currentVelocity)[2] + (omega * (cast change)[2])) * deltaTime);
        var tempZ:StdTypes.Float = (((cast currentVelocity)[3] + (omega * (cast change)[3])) * deltaTime);
        (cast currentVelocity)[1] = (((cast currentVelocity)[1] - (omega * tempX)) * decay);
        (cast currentVelocity)[2] = (((cast currentVelocity)[2] - (omega * tempY)) * decay);
        (cast currentVelocity)[3] = (((cast currentVelocity)[3] - (omega * tempZ)) * decay);
        var result:lua.Table<Int, Float> = ((lua.Table.create(([((cast target)[1] + (((cast change)[1] + tempX) * decay)), ((cast target)[2] + (((cast change)[2] + tempY) * decay)), ((cast target)[3] + (((cast change)[3] + tempZ) * decay))] : Array<Float>))));
        if (((((((cast originalTarget)[1] - (cast current)[1]) * ((cast result)[1] - (cast originalTarget)[1])) + (((cast originalTarget)[2] - (cast current)[2]) * ((cast result)[2] - (cast originalTarget)[2]))) + (((cast originalTarget)[3] - (cast current)[3]) * ((cast result)[3] - (cast originalTarget)[3]))) > 0)) {
            result = originalTarget;
            (cast currentVelocity)[1] = (((cast originalTarget)[1] - (cast originalTarget)[1]) / deltaTime);
            (cast currentVelocity)[2] = (((cast originalTarget)[2] - (cast originalTarget)[2]) / deltaTime);
            (cast currentVelocity)[3] = (((cast originalTarget)[3] - (cast originalTarget)[3]) / deltaTime);
        };
        return result;
    }

    @:hashAbi("SB38804902388027C")
    public static function InclusionCapsule(?center:Vector3, ?points:Array<Vector3>):Dynamic
    {
        var radiusSquared:StdTypes.Float = 0.0;
        {
            var arrayIndex:StdTypes.Int = 0;
            while ((arrayIndex < points.length)) {
                var point:lua.Table<Int, Float> = points[arrayIndex];
                ++arrayIndex;
                var offset:lua.Table<Int, Float> = ((lua.Table.create(([((cast center)[1] - (cast point)[1]), ((cast center)[2] - (cast point)[2]), ((cast center)[3] - (cast point)[3])] : Array<Float>))));
                var distanceSquared:StdTypes.Float = cppbindings.C7A48E3FC.fBD92E0EC((cast (cast offset))[1], (cast (cast offset))[2], (cast (cast offset))[3]);
                if ((radiusSquared < distanceSquared)) {
                    radiusSquared = distanceSquared;
                };
            };
        };
        var radius:StdTypes.Float = lua.Math.sqrt(radiusSquared);
        var minHeight:StdTypes.Float = (cast center)[2];
        var maxHeight:StdTypes.Float = (cast center)[2];
        {
            var arrayIndex2:StdTypes.Int = 0;
            while ((arrayIndex2 < points.length)) {
                var point:lua.Table<Int, Float> = points[arrayIndex2];
                ++arrayIndex2;
                if ((minHeight > (cast point)[2])) {
                    minHeight = (cast point)[2];
                };
                if ((maxHeight < (cast point)[2])) {
                    maxHeight = (cast point)[2];
                };
            };
        };
        return cppbindings.C29502AD0.fE3C8AFD1((cast center)[1], ((minHeight + maxHeight) * 0.5), (cast center)[3], 0, 1, 0, (maxHeight - minHeight), radius);
    }

    @:hashAbi("SACD3B639AAC4B738")
    public static function MinInt(?a:Dynamic, ?b:Dynamic):Dynamic
    {
        return a < b ? a : b;
    }

    @:hashAbi("S46F8C671D264732A")
    public static function MaxInt(?a:Dynamic, ?b:Dynamic):Dynamic
    {
        return b < a ? a : b;
    }
}
