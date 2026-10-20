package main.util;

import cppbindings.Vector2Values as Vector2;
import cppbindings.Vector3Values as Vector3;
import cppbindings.CD5675BA5 as Quaternion;
import cppbindings.C7F951E2A as Plane;

private typedef CompositionPoint =
{
    var basePos:Vector3;
    var pos:Vector3;
    var isFront:Bool;
    var len:Float;
}

private typedef CompositionOptions =
{
    var ?pointLimitMin:Vector2;
    var ?pointLimitMax:Vector2;
    var ?minDistance:Float;
    var ?maxDistance:Float;
}

@:keep
@:chunk("main")
@:hashAbi("CFEA9C3BFB3FCD429")
@:expose("CFEA9C3BFB3FCD429")
class CompositionCamera
{
    @:hashAbi("S1870754F68D7E98F")
    public static function CalcAngle(?target:Vector3, ?targetRatio:Vector2, ?fovy:Dynamic, ?cameraLength:Dynamic, ?cameraRotate:Quaternion):Dynamic
    {
        var halfHorizontalFov:StdTypes.Float = (main.util.CompositionCamera.CalcXFov(fovy) / 2);
        var verticalRatio:StdTypes.Float = ((1 - ((cast targetRatio)[2] * 2)) * -1);
        var x:StdTypes.Float = (lua.Math.tan((halfHorizontalFov * (1 - ((cast targetRatio)[1] * 2)))) * cameraLength);
        var y:StdTypes.Float = (lua.Math.tan(((fovy / 2) * verticalRatio)) * cameraLength);
        var offset:lua.Table<Int, Float> = ((lua.Table.create(([-x, -y, 0] : Array<Float>))));
        var positionOffset:lua.Table<Int, Float> = ((lua.Table.create(([(cast offset)[1], (cast offset)[2], (cast offset)[3]] : Array<Float>))));
        (cast positionOffset)[3] = ((cast positionOffset)[3] - cameraLength);
        cameraRotate.f1087DA78();
        offset = ({
            var v:cppbindings.Vec3 = cameraRotate.fCA247E7A((cast offset)[1], (cast offset)[2], (cast offset)[3]);
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues5:lua.Table<Int, Float>;
                vectorValues5 = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues5);
            };
        });
        positionOffset = ({
            var v:cppbindings.Vec3 = cameraRotate.fCA247E7A((cast positionOffset)[1], (cast positionOffset)[2], (cast positionOffset)[3]);
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues7:lua.Table<Int, Float>;
                vectorValues7 = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues7);
            };
        });
        var up:lua.Table<Int, Float> = ({
            var v:lua.Table<Int, Float> = ((lua.Table.create(([0, 1, 0] : Array<Float>))));
            {
                var v:cppbindings.Vec3 = cameraRotate.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues11:lua.Table<Int, Float>;
                    vectorValues11 = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues11);
                };
            };
        });
        var translation:lua.Table<Int, Float> = ((lua.Table.create(([((cast target)[1] - (cast positionOffset)[1]), ((cast target)[2] - (cast positionOffset)[2]), ((cast target)[3] - (cast positionOffset)[3])] : Array<Float>))));
        var lookFrom:lua.Table<Int, Float> = ((lua.Table.create(([((cast target)[1] - (cast offset)[1]), ((cast target)[2] - (cast offset)[2]), ((cast target)[3] - (cast offset)[3])] : Array<Float>))));
        var rotation:cppbindings.CD5675BA5 = ({
            var from:StdTypes.Null<lua.Table<Int, Float>> = lookFrom;
            var up:StdTypes.Null<lua.Table<Int, Float>> = up;
            if ((from == null)) {
                from = (cast ((lua.Table.create(([0, 0, 0] : Array<Float>)))));
            };
            if ((up == null)) {
                up = (cast ((lua.Table.create(([0, 1, 0] : Array<Float>)))));
            };
            {
                var from:lua.Table<Int, Float> = (cast from);
                var up:lua.Table<Int, Float> = (cast up);
                cppbindings.CD5675BA5.fB5706664((cast translation)[1], (cast translation)[2], (cast translation)[3], (cast from)[1], (cast from)[2], (cast from)[3], (cast up)[1], (cast up)[2], (cast up)[3]);
            };
        });
        rotation.f1087DA78();
        var finalTarget:lua.Table<Int, Float> = ((lua.Table.create(([((cast target)[1] - (cast offset)[1]), ((cast target)[2] - (cast offset)[2]), ((cast target)[3] - (cast offset)[3])] : Array<Float>))));
        return { Translation : translation, Rotation : rotation, Fovy : fovy, Roll : 0, Target : finalTarget, UpVec : up };
    }

    @:hashAbi("S512B895F12769CF2")
    public static function CalcAngleEx(?target:Vector3, ?targetRatio:Vector2, ?fovy:Dynamic, ?cameraRotate:Quaternion, ?pointArray:Array<Vector3>, ?option:CompositionOptions):Dynamic
    {
        var limitMin:lua.Table<Int, Float> = ((lua.Table.create(([0, 0] : Array<Float>))));
        var limitMax:lua.Table<Int, Float> = ((lua.Table.create(([1, 1] : Array<Float>))));
        if (((option != null) && (option.pointLimitMin != null))) {
            limitMin = option.pointLimitMin;
        };
        if (((option != null) && (option.pointLimitMax != null))) {
            limitMax = option.pointLimitMax;
        };
        var side:lua.Table<Int, Float> = ({
            var v:lua.Table<Int, Float> = ((lua.Table.create(([1, 0, 0] : Array<Float>))));
            {
                var v:cppbindings.Vec3 = cameraRotate.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues7:lua.Table<Int, Float>;
                    vectorValues7 = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues7);
                };
            };
        });
        var up:lua.Table<Int, Float> = ({
            var v:lua.Table<Int, Float> = ((lua.Table.create(([0, 1, 0] : Array<Float>))));
            {
                var v:cppbindings.Vec3 = cameraRotate.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues11:lua.Table<Int, Float>;
                    vectorValues11 = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues11);
                };
            };
        });
        var forward:lua.Table<Int, Float> = ({
            var v:lua.Table<Int, Float> = ((lua.Table.create(([0, 0, 1] : Array<Float>))));
            {
                var v:cppbindings.Vec3 = cameraRotate.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues15:lua.Table<Int, Float>;
                    vectorValues15 = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues15);
                };
            };
        });
        var plane:cppbindings.C7F951E2A = ({
            var vectorValues17:cppbindings.C7F951E2A;
            vectorValues17 = cppbindings.C7F951E2A.f94CF9F47((cast forward)[1], (cast forward)[2], (cast forward)[3], (cast target)[1], (cast target)[2], (cast target)[3]);
            cast (cast vectorValues17);
        });
        var crossPoints:Array<CompositionPoint> = new Array();
        {
            var arrayIndex:StdTypes.Int = 0;
            while ((arrayIndex < pointArray.length)) {
                var point:lua.Table<Int, Float> = pointArray[arrayIndex];
                ++arrayIndex;
                var projected:lua.Table<Int, Float> = ({
                    var v:cppbindings.Vec3 = plane.f6AC439C3((cast point)[1], (cast point)[2], (cast point)[3]);
                    {
                        var x:StdTypes.Float = v.x;
                        var y:StdTypes.Float = v.y;
                        var z:StdTypes.Float = v.z;
                        var vectorValues18:lua.Table<Int, Float>;
                        vectorValues18 = (lua.Table.create(([x, y, z] : Array<Float>)));
                        cast (cast vectorValues18);
                    };
                });
                crossPoints.push({ basePos : point, pos : projected, isFront : plane.f82FDCD56((cast point)[1], (cast point)[2], (cast point)[3]), len : (cast 0) });
            };
        };
        var horizontal:{ public var adjustLen(default, null) : StdTypes.Int; } = main.util.CompositionCamera.CalcAxisLength(target, main.util.CompositionCamera.CalcXFov(fovy), (cast targetRatio)[1], crossPoints, plane, up, side, (cast limitMin)[1], (cast limitMax)[1]);
        var vertical:{ public var adjustLen(default, null) : StdTypes.Int; } = main.util.CompositionCamera.CalcAxisLength(target, fovy, (cast targetRatio)[2], crossPoints, plane, ((lua.Table.create(([-(cast side)[1], -(cast side)[2], -(cast side)[3]] : Array<Float>)))), ((lua.Table.create(([-(cast up)[1], -(cast up)[2], -(cast up)[3]] : Array<Float>)))), (cast limitMin)[2], (cast limitMax)[2]);
        var cameraLength:Dynamic = (if ((horizontal.adjustLen > vertical.adjustLen)) {
            horizontal.adjustLen;
        } else {
            vertical.adjustLen;
        });
        if ((((option != null) && (option.minDistance != null)) && (cameraLength < option.minDistance))) {
            cameraLength = option.minDistance;
        };
        if ((((option != null) && (option.maxDistance != null)) && (cameraLength > option.maxDistance))) {
            cameraLength = option.maxDistance;
        };
        return main.util.CompositionCamera.CalcAngle(target, targetRatio, fovy, cameraLength, cameraRotate);
    }

    @:hashAbi("S424E3EA0446070E7")
    public static function CalcXFov(?fovy:Dynamic):Dynamic
    {
        return lua.Math.atan2(960.0, 540.0 / lua.Math.tan(fovy / 2)) * 2;
    }

    @:hashAbi("S64ECD5312207DBB5")
    public static function CalcAxisLength(?target:Dynamic, ?fov:Dynamic, ?targetRatio:Dynamic, ?crossPointArray:Dynamic, ?camPlane:Dynamic, ?upVec:Dynamic, ?sideVec:Dynamic, ?min:Dynamic, ?max:Dynamic):Dynamic
    {
        var axisPlane:{ public var fAA865F85(default, null) : (StdTypes.Float, StdTypes.Float, StdTypes.Float) -> StdTypes.Float; } = cppbindings.CFC370E84.fE3C8AFD1(target[1], target[2], target[3], upVec[1], upVec[2], upVec[3]);
        var sidePlane:{ public var f82FDCD56(default, null) : Dynamic; } = cppbindings.C7F951E2A.f94CF9F47(sideVec[1], sideVec[2], sideVec[3], target[1], target[2], target[3]);
        var points:Array<CompositionPoint> = crossPointArray;
        {
            var arrayIndex:StdTypes.Int = 0;
            while ((arrayIndex < points.length)) {
                var point:CompositionPoint = points[arrayIndex];
                ++arrayIndex;
                var position:lua.Table<Int, Float> = point.pos;
                var distance:StdTypes.Float = axisPlane.fAA865F85((cast position)[1], (cast position)[2], (cast position)[3]);
                position = point.pos;
                if (!lua.abi.Host.truthy(sidePlane.f82FDCD56((cast position)[1], (cast position)[2], (cast position)[3]))) {
                    distance *= -1;
                };
                point.len = distance;
            };
        };
        var minPoint:CompositionPoint = points[0];
        var maxPoint:CompositionPoint = points[0];
        {
            var arrayIndex2:StdTypes.Int = 1;
            var arrayIndex3:StdTypes.Int = points.length;
            while ((arrayIndex2 < arrayIndex3)) {
                var index:StdTypes.Int = arrayIndex2++;
                if ((points[index].len < minPoint.len)) {
                    minPoint = points[index];
                };
                if ((points[index].len > maxPoint.len)) {
                    maxPoint = points[index];
                };
            };
        };
        var minLength:StdTypes.Float = -1.0;
        var maxLength:StdTypes.Float = -1.0;
        if ((min < targetRatio)) {
            if ((minPoint.len < -0.001)) {
                minLength = (-minPoint.len / (targetRatio - min));
            };
        } else {
            if ((targetRatio < min)) {
                if ((minPoint.len > 0.001)) {
                    minLength = (minPoint.len / (min - targetRatio));
                };
            };
        };
        var projectedMax:StdTypes.Null<Dynamic> = (((maxPoint.len - minPoint.len) / minLength) + min);
        if ((max < targetRatio)) {
            if ((maxPoint.len < -0.001)) {
                maxLength = (-maxPoint.len / (targetRatio - max));
            };
        } else {
            if ((targetRatio < max)) {
                if ((maxPoint.len > 0.001)) {
                    maxLength = (maxPoint.len / (max - targetRatio));
                };
            };
        };
        var projectedMin:StdTypes.Float = (max - ((maxPoint.len - minPoint.len) / maxLength));
        var useMin:StdTypes.Bool;
        if ((minLength < 0)) {
            useMin = false;
        } else {
            if ((maxLength < 0)) {
                useMin = true;
            } else {
                if (((minLength < maxLength) && (max > projectedMax))) {
                    useMin = true;
                } else {
                    if (((minLength > maxLength) && (min < projectedMin))) {
                        useMin = false;
                    } else {
                        if ((minLength < maxLength)) {
                            useMin = false;
                        } else {
                            useMin = true;
                        };
                    };
                };
            };
        };
        var cameraLength:StdTypes.Float;
        var adjustment:StdTypes.Float;
        if (useMin) {
            cameraLength = lua.Math.abs(((-minLength / 2) / lua.Math.tan((fov / 2))));
            adjustment = main.util.CompositionCamera.AdjustLimitPos(minLength, fov, targetRatio, min, camPlane, sideVec, minPoint);
        } else {
            cameraLength = lua.Math.abs(((-maxLength / 2) / lua.Math.tan((fov / 2))));
            adjustment = main.util.CompositionCamera.AdjustLimitPos(maxLength, fov, targetRatio, max, camPlane, sideVec, maxPoint);
        };
        return { cameraLen : cameraLength, adjustLen : lua.Math.abs(((-adjustment / 2) / lua.Math.tan((fov / 2)))) };
    }

    @:hashAbi("S51D436012A7169D1")
    public static function AdjustLimitPos(?camLen:Dynamic, ?fov:Dynamic, ?targetRatio:Dynamic, ?limitRatio:Dynamic, ?camPlane:Plane, ?sideVec:Vector3, ?lenData:CompositionPoint):Dynamic
    {
        if ((camLen == 0)) {
            return 0;
        };
        var position:lua.Table<Int, Float> = lenData.basePos;
        var distance:StdTypes.Float = camPlane.fA545CF6E((cast position)[1], (cast position)[2], (cast position)[3]);
        if ((lua.Math.abs(distance) < 0.001)) {
            return camLen;
        };
        var limitScale:StdTypes.Float = ((lua.Math.abs((limitRatio - 0.5)) * camLen) / 2);
        if (lua.abi.Host.truthy(lenData.isFront)) {
            camLen += ((((distance / lua.Math.abs(((-camLen / 2) / lua.Math.tan((fov / 2))))) * limitScale) * 2) * 1.5);
        } else {
            camLen -= ((((distance / (lua.Math.abs(((-camLen / 2) / lua.Math.tan((fov / 2)))) + distance)) * limitScale) * 2) * 1.5);
        };
        return camLen;
    }
}
