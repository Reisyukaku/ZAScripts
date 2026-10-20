package main.util.tween;

import main.system.coroutine.BaseCoroutineObject;
import main.system.coroutine.InternalState;
import cppbindings.C3FB42236 as GameObject;
import cppbindings.C4722FD2B as TweenVector;
import cppbindings.C896B7995 as Duration;
import cppbindings.Vector3Values as Vector3;
import cppbindings.CD5675BA5 as Quaternion;
import StdTypes.Int as EaseFunc;
import ti.Coroutine;

@:keep
@:chunk("main")
@:hashAbi("CC704789D12A0E0F2")
@:expose("CC704789D12A0E0F2")
class TweenUtil extends BaseCoroutineObject
{
    @:hashAbi("FC0150FC2959FFA71")
    public var onUpdate:Dynamic->Void;

    @:hashAbi("F0085F7055F019927")
    public var onComplete:()->Void;

    @:hashAbi("F9C2061D76FBA5293")
    public var onPathChange:Int->Void;

    @:abiSlot(5)
    public var obj:GameObject;

    @:abiSlot(6)
    public var tween:TweenVector;

    @:abiSlot(7)
    public var isForceStop:Bool;

    @:abiSlot(8)
    public var loopCount:Int;

    @:abiSlot(9)
    public var loopType:TweenLoopType;

    @:abiSlot(10)
    public var lockAtValue:Float;

    @:abiSlot(11)
    public var ease:EaseFunc;

    @:abiSlot(12)
    public var isPause:Bool;

    @:abiSlot(13)
    public var targetTime:Float;

    @:abiSlot(14)
    public var pauseStackTime:Float;

    @:abiSlot(15)
    public var nowTweenValue:Vector3;

    @:abiSlot(16)
    public var isPathMoveLinearClosed:Bool;

    @:abiSlot(17)
    public var catmullRom:TweenCatmullRomUtil;

    @:abiSlot(18)
    public var catmullRomOption:TweenCatmullRomOption;

    @:abiSlot(19)
    public var isDebugLine:Bool;

    public function new(obj:GameObject)
    {
        super(obj.fE9C29DA1());
        this.isDebugLine = true;
        this.isPathMoveLinearClosed = false;
        this.pauseStackTime = 0;
        this.targetTime = 0;
        this.isPause = false;
        this.ease = (cast 0);
        this.lockAtValue = 0;
        this.loopType = main.util.tween.TweenLoopType.Yoyo;
        this.loopCount = 1;
        this.isForceStop = false;
        this.obj = obj;
        this.tween = cppbindings.C4722FD2B.f101D811F();
        this.catmullRomOption = new main.util.tween.TweenCatmullRomOption();
    }

    @:hashAbi("F9EF8B08DA4FDA9E4")
    public override function mainCoroutineFunc():Dynamic
    {
        return null;
    }

    @:hashAbi("F54D82E924D2D26F4")
    public function Move(targetPos:Vector3, time:Float):Dynamic
    {
        this.CreateCoroutineMove(targetPos, time);
        return this;
    }

    @:hashAbi("F03B84A395F29061F")
    public function MoveSpeed(targetPos:Vector3, speed:Float):Dynamic
    {
        this.CreateCoroutineMove(targetPos, main.util.tween.TweenMathUtil.DistanceToSeconds((cast ({
            var _this:cppbindings.C3FB42236 = this.obj;
            {
                var v:cppbindings.Vec3 = _this.f750133BA();
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues:lua.Table<Int, Float>;
                    vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues);
                };
            };
        })), (cast targetPos), speed));
        return this;
    }

    @:hashAbi("F9518230B6FB5261C")
    public function CreateCoroutineMove(targetPos:Vector3, time:Float):Dynamic
    {
        var ownerSnapshot:main.util.tween.TweenUtil = this;
        this.ResetParam();
        var completedLoops:StdTypes.Int = 0;
        var startPosition:lua.Table<Int, Float> = ({
            var _this:cppbindings.C3FB42236 = this.obj;
            {
                var v:cppbindings.Vec3 = _this.f750133BA();
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
        var endPosition:lua.Table<Int, Float> = targetPos;
        this.targetTime = time;
        this.m_mainCoroutine = new ti.Coroutine(function():StdTypes.Void {
            while (!ownerSnapshot.isForceStop) {
                ownerSnapshot.pauseStackTime = 0;
                var nextPosition:lua.Table<Int, Float>;
                if ((((completedLoops % 2) == 0) || (ownerSnapshot.loopType == main.util.tween.TweenLoopType.Restart))) {
                    {
                        var _this:cppbindings.C4722FD2B = ownerSnapshot.tween;
                        var duration:cppbindings.C896B7995 = cppbindings.C896B7995.f047D37EE(time);
                        var smoothing:StdTypes.Int = (if ((ownerSnapshot.ease == null)) cast 0 else ownerSnapshot.ease);
                        if ((smoothing == null)) smoothing = 0;
                        {
                            _this.f97571D92((cast startPosition)[1], (cast startPosition)[2], (cast startPosition)[3], (cast endPosition)[1], (cast endPosition)[2], (cast endPosition)[3], duration, smoothing);
                        };
                    };
                    nextPosition = endPosition;
                } else {
                    {
                        var _this:cppbindings.C4722FD2B = ownerSnapshot.tween;
                        var duration:cppbindings.C896B7995 = cppbindings.C896B7995.f047D37EE(time);
                        var smoothing:StdTypes.Int = (if ((ownerSnapshot.ease == null)) cast 0 else ownerSnapshot.ease);
                        if ((smoothing == null)) smoothing = 0;
                        {
                            _this.f97571D92((cast endPosition)[1], (cast endPosition)[2], (cast endPosition)[3], (cast startPosition)[1], (cast startPosition)[2], (cast startPosition)[3], duration, smoothing);
                        };
                    };
                    nextPosition = startPosition;
                };
                var nextRotation:cppbindings.CD5675BA5 = cppbindings.CD5675BA5.f0151A26E();
                cppbindings.CD5675BA5.f0151A26E();
                var rotationProgress:StdTypes.Float = 0.0;
                if ((ownerSnapshot.lockAtValue > 0)) {
                    nextRotation = ({
                        var from:StdTypes.Null<lua.Table<Int, Float>> = ({
                            var _this:cppbindings.C3FB42236 = ownerSnapshot.obj;
                            {
                                var v:cppbindings.Vec3 = _this.f750133BA();
                                {
                                    var x:StdTypes.Float = v.x;
                                    var y:StdTypes.Float = v.y;
                                    var z:StdTypes.Float = v.z;
                                    var vectorValues3:lua.Table<Int, Float>;
                                    vectorValues3 = (lua.Table.create(([x, y, z] : Array<Float>)));
                                    cast vectorValues3;
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
                            cppbindings.CD5675BA5.fB5706664((cast nextPosition)[1], (cast nextPosition)[2], (cast nextPosition)[3], (cast from)[1], (cast from)[2], (cast from)[3], (cast up)[1], (cast up)[2], (cast up)[3]);
                        };
                    });
                    ownerSnapshot.obj.f16155D9E();
                };
                var loopStart:lua.Table<Int, Float> = ({
                    var _this:cppbindings.C3FB42236 = ownerSnapshot.obj;
                    {
                        var v:cppbindings.Vec3 = _this.f750133BA();
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
                while ((!ownerSnapshot.tween.fFFAA5D50() && !ownerSnapshot.isForceStop)) {
                    ownerSnapshot.nowTweenValue = ({
                        var _this:cppbindings.C4722FD2B = ownerSnapshot.tween;
                        {
                            var v:cppbindings.Vec3 = _this.f77EC8F2F();
                            {
                                var x:StdTypes.Float = v.x;
                                var y:StdTypes.Float = v.y;
                                var z:StdTypes.Float = v.z;
                                var vectorValues13:lua.Table<Int, Float>;
                                vectorValues13 = (lua.Table.create(([x, y, z] : Array<Float>)));
                                cast (cast vectorValues13);
                            };
                        };
                    });
                    {
                        var _this:cppbindings.C3FB42236 = ownerSnapshot.obj;
                        var translation:lua.Table<Int, Float> = ownerSnapshot.nowTweenValue;
                        {
                            _this.f8F2B0552((cast translation)[1], (cast translation)[2], (cast translation)[3]);
                        };
                        translation;
                    };
                    if ((ownerSnapshot.lockAtValue > 0)) {
                        {
                            var _this:cppbindings.C3FB42236 = ownerSnapshot.obj;
                            var rotation:cppbindings.CD5675BA5 = cppbindings.CD5675BA5.fBE61A5F8(ownerSnapshot.obj.f16155D9E(), nextRotation, rotationProgress);
                            _this.f24032F87(rotation);
                            rotation;
                        };
                        rotationProgress = (if ((rotationProgress < 1)) {
                            rotationProgress + ownerSnapshot.lockAtValue;
                        } else {
                            1;
                        });
                    };
                    ownerSnapshot.DebugTweenMove(startPosition, endPosition);
                    if ((ownerSnapshot.onUpdate != null)) {
                        var distance:StdTypes.Float = cppbindings.C7A48E3FC.f38BA082F((cast startPosition)[1], (cast startPosition)[2], (cast startPosition)[3], (cast endPosition)[1], (cast endPosition)[2], (cast endPosition)[3]);
                        var moved:StdTypes.Float = ({
                            var rhs:lua.Table<Int, Float> = ({
                                var _this:cppbindings.C3FB42236 = ownerSnapshot.obj;
                                {
                                    var v:cppbindings.Vec3 = _this.f750133BA();
                                    {
                                        var x:StdTypes.Float = v.x;
                                        var y:StdTypes.Float = v.y;
                                        var z:StdTypes.Float = v.z;
                                        var vectorValues15:lua.Table<Int, Float>;
                                        vectorValues15 = (lua.Table.create(([x, y, z] : Array<Float>)));
                                        cast vectorValues15;
                                    };
                                };
                            });
                            cppbindings.C7A48E3FC.f38BA082F((cast loopStart)[1], (cast loopStart)[2], (cast loopStart)[3], (cast rhs)[1], (cast rhs)[2], (cast rhs)[3]);
                        });
                        var output:main.util.tween.TweenOutputParam = new main.util.tween.TweenOutputParam();
                        output.value_n = (moved / distance);
                        output.loopCount = completedLoops;
                        ownerSnapshot.onUpdate(output);
                    };
                    ti.Coroutine.yield();
                };
                ownerSnapshot.nowTweenValue = ({
                    var _this:cppbindings.C4722FD2B = ownerSnapshot.tween;
                    {
                        var v:cppbindings.Vec3 = _this.f77EC8F2F();
                        {
                            var x:StdTypes.Float = v.x;
                            var y:StdTypes.Float = v.y;
                            var z:StdTypes.Float = v.z;
                            var vectorValues17:lua.Table<Int, Float>;
                            vectorValues17 = (lua.Table.create(([x, y, z] : Array<Float>)));
                            cast (cast vectorValues17);
                        };
                    };
                });
                {
                    var _this:cppbindings.C3FB42236 = ownerSnapshot.obj;
                    var translation:lua.Table<Int, Float> = ownerSnapshot.nowTweenValue;
                    {
                        _this.f8F2B0552((cast translation)[1], (cast translation)[2], (cast translation)[3]);
                    };
                    translation;
                };
                completedLoops++;
                if ((completedLoops == ownerSnapshot.loopCount)) {
                    break;
                };
            };
            if ((ownerSnapshot.onComplete != null)) {
                ownerSnapshot.onComplete();
            };
        }, "tween_move");
        return null;
    }

    @:hashAbi("F7364C99F171973B4")
    public function SimpleValue(time:Float, maxValue:Float = 1):Dynamic
    {
        CreateCoroutineSimpleValue(time, maxValue);
        return this;
    }

    @:hashAbi("FA78D947F4150F8AC")
    public function CreateCoroutineSimpleValue(time:Float, maxValue:Float = 1):Dynamic
    {
        var ownerSnapshot:main.util.tween.TweenUtil = this;
        this.ResetParam();
        var completedLoops:StdTypes.Int = 0;
        var startValue:lua.Table<Int, Float> = ((lua.Table.create(([0, 0, 0] : Array<Float>))));
        var endValue:lua.Table<Int, Float> = ((lua.Table.create(([maxValue, (0 * maxValue), (0 * maxValue)] : Array<Float>))));
        this.targetTime = time;
        this.m_mainCoroutine = new ti.Coroutine(function():StdTypes.Void {
            while (!ownerSnapshot.isForceStop) {
                ownerSnapshot.pauseStackTime = 0;
                if ((((completedLoops % 2) == 0) || (ownerSnapshot.loopType == main.util.tween.TweenLoopType.Restart))) {
                    {
                        var _this:cppbindings.C4722FD2B = ownerSnapshot.tween;
                        var duration:cppbindings.C896B7995 = cppbindings.C896B7995.f047D37EE(time);
                        var smoothing:StdTypes.Int = (if ((ownerSnapshot.ease == null)) cast 0 else ownerSnapshot.ease);
                        if ((smoothing == null)) smoothing = 0;
                        {
                            _this.f97571D92((cast startValue)[1], (cast startValue)[2], (cast startValue)[3], (cast endValue)[1], (cast endValue)[2], (cast endValue)[3], duration, smoothing);
                        };
                    };
                } else {
                    {
                        var _this:cppbindings.C4722FD2B = ownerSnapshot.tween;
                        var duration:cppbindings.C896B7995 = cppbindings.C896B7995.f047D37EE(time);
                        var smoothing:StdTypes.Int = (if ((ownerSnapshot.ease == null)) cast 0 else ownerSnapshot.ease);
                        if ((smoothing == null)) smoothing = 0;
                        {
                            _this.f97571D92((cast endValue)[1], (cast endValue)[2], (cast endValue)[3], (cast startValue)[1], (cast startValue)[2], (cast startValue)[3], duration, smoothing);
                        };
                    };
                };
                while ((!ownerSnapshot.tween.fFFAA5D50() && !ownerSnapshot.isForceStop)) {
                    ownerSnapshot.OnUpdateSimpleValue(({
                        var _this:cppbindings.C4722FD2B = ownerSnapshot.tween;
                        {
                            var v:cppbindings.Vec3 = _this.f77EC8F2F();
                            {
                                var x:StdTypes.Float = v.x;
                                var y:StdTypes.Float = v.y;
                                var z:StdTypes.Float = v.z;
                                var vectorValues5:lua.Table<Int, Float>;
                                vectorValues5 = (lua.Table.create(([x, y, z] : Array<Float>)));
                                cast (cast vectorValues5);
                            };
                        };
                    }), completedLoops);
                    ti.Coroutine.yield();
                };
                completedLoops++;
                if ((completedLoops == ownerSnapshot.loopCount)) {
                    break;
                };
            };
            if ((ownerSnapshot.onComplete != null)) {
                ownerSnapshot.OnUpdateSimpleValue(({
                    var _this:cppbindings.C4722FD2B = ownerSnapshot.tween;
                    {
                        var v:cppbindings.Vec3 = _this.f77EC8F2F();
                        {
                            var x:StdTypes.Float = v.x;
                            var y:StdTypes.Float = v.y;
                            var z:StdTypes.Float = v.z;
                            var vectorValues7:lua.Table<Int, Float>;
                            vectorValues7 = (lua.Table.create(([x, y, z] : Array<Float>)));
                            cast (cast vectorValues7);
                        };
                    };
                }), completedLoops);
                ownerSnapshot.onComplete();
            };
        }, "tween_move");
        return null;
    }

    @:hashAbi("F9DDCAC6FC1A43090")
    public function OnUpdateSimpleValue(tweenValue:Vector3, loopCount:Int):Dynamic
    {
        this.nowTweenValue = tweenValue;
        if ((this.onUpdate != null)) {
            var output:main.util.tween.TweenOutputParam = new main.util.tween.TweenOutputParam();
            output.value_n = (cast tweenValue)[1];
            output.loopCount = loopCount;
            this.onUpdate(output);
        };
        return null;
    }

    @:hashAbi("FAC621C7266E79083")
    public function PathMove(path:Array<Vector3>, time:Float, pathType:TweenPathType = Linear):Dynamic
    {
        var paths:Array<lua.Table<Int, Float>> = ({
            var arrayValues:Array<lua.Table<Int, Float>> = [];
            {
                var arrayIndex:StdTypes.Int = 0;
                var arrayValues2:Array<lua.Table<Int, Float>> = path;
                while ((arrayIndex < arrayValues2.length)) {
                    var i:lua.Table<Int, Float> = arrayValues2[arrayIndex];
                    ++arrayIndex;
                    arrayValues.push(i);
                };
            };
            arrayValues;
        });
        {
            var pos:StdTypes.Int = 0;
            var x:lua.Table<Int, Float> = ({
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
            if ((pos > paths.length)) {
                pos = paths.length;
            };
            if ((pos < 0)) {
                pos = (paths.length + pos);
                if ((pos < 0)) {
                    pos = 0;
                };
            };
            var cur_len:StdTypes.Int = paths.length;
            while ((cur_len > pos)) {
                paths[cur_len] = paths[(cur_len - 1)];
                cur_len -= 1;
            };
            paths[pos] = x;
        };
        if ((pathType == main.util.tween.TweenPathType.Linear)) {
            this.CreateCoroutinePathMove(paths, true, time, 0);
        } else {
            if ((pathType == main.util.tween.TweenPathType.CatmullRom)) {
                this.CreateCoroutinePathCatmullRomMove(paths, true, time, 0);
            };
        };
        return this;
    }

    @:hashAbi("FC072C58126BE9CDE")
    public function PathMoveSpeed(path:Array<Vector3>, speed:Float, pathType:TweenPathType = Linear):Dynamic
    {
        var paths:Array<lua.Table<Int, Float>> = ({
            var arrayValues:Array<lua.Table<Int, Float>> = [];
            {
                var arrayIndex:StdTypes.Int = 0;
                var arrayValues2:Array<lua.Table<Int, Float>> = path;
                while ((arrayIndex < arrayValues2.length)) {
                    var i:lua.Table<Int, Float> = arrayValues2[arrayIndex];
                    ++arrayIndex;
                    arrayValues.push(i);
                };
            };
            arrayValues;
        });
        {
            var pos:StdTypes.Int = 0;
            var x:lua.Table<Int, Float> = ({
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
            if ((pos > paths.length)) {
                pos = paths.length;
            };
            if ((pos < 0)) {
                pos = (paths.length + pos);
                if ((pos < 0)) {
                    pos = 0;
                };
            };
            var cur_len:StdTypes.Int = paths.length;
            while ((cur_len > pos)) {
                paths[cur_len] = paths[(cur_len - 1)];
                cur_len -= 1;
            };
            paths[pos] = x;
        };
        if ((pathType == main.util.tween.TweenPathType.Linear)) {
            this.CreateCoroutinePathMove(paths, false, 0, speed);
        } else {
            if ((pathType == main.util.tween.TweenPathType.CatmullRom)) {
                this.CreateCoroutinePathCatmullRomMove(paths, false, 0, speed);
            };
        };
        return this;
    }

    @:hashAbi("F9DFDAED23135909B")
    public function CreateCoroutinePathMove(paths:Array<Vector3>, isTimeType:Bool, time:Float, speed:Float):Dynamic
    {
        var ownerSnapshot:main.util.tween.TweenUtil = this;
        this.ResetParam();
        var completedLoops:StdTypes.Int = 0;
        var reversedPaths:Array<lua.Table<Int, Float>> = ({
            var arrayValues:Array<lua.Table<Int, Float>> = [];
            {
                var arrayIndex:StdTypes.Int = 0;
                var arrayValues2:Array<lua.Table<Int, Float>> = paths;
                while ((arrayIndex < arrayValues2.length)) {
                    var i:lua.Table<Int, Float> = arrayValues2[arrayIndex];
                    ++arrayIndex;
                    arrayValues.push(i);
                };
            };
            arrayValues;
        });
        reversedPaths.reverse();
        this.m_mainCoroutine = new ti.Coroutine(function():StdTypes.Void {
            if (ownerSnapshot.isPathMoveLinearClosed) {
                {
                    var pos:StdTypes.Int = 0;
                    if ((pos > reversedPaths.length)) {
                        pos = reversedPaths.length;
                    };
                    if ((pos < 0)) {
                        pos = (reversedPaths.length + pos);
                        if ((pos < 0)) {
                            pos = 0;
                        };
                    };
                    var cur_len:StdTypes.Int = reversedPaths.length;
                    while ((cur_len > pos)) {
                        reversedPaths[cur_len] = reversedPaths[(cur_len - 1)];
                        cur_len -= 1;
                    };
                    reversedPaths[pos] = paths[0];
                };
                paths.push(paths[0]);
            };
            var pathDistance:StdTypes.Float = main.util.tween.TweenMathUtil.ArrayDistance((cast paths));
            if (!isTimeType) {
                time = main.util.tween.TweenMathUtil.DistanceToSecondsSimple(pathDistance, speed);
            };
            while (!ownerSnapshot.isForceStop) {
                if ((((completedLoops % 2) == 0) || (ownerSnapshot.loopType == main.util.tween.TweenLoopType.Restart))) {
                    {
                        var arrayIndex2:StdTypes.Int = 0;
                        var arrayIndex3:StdTypes.Int = paths.length;
                        while ((arrayIndex2 < arrayIndex3)) {
                            var index:StdTypes.Int = arrayIndex2++;
                            if ((paths[(index + 1)] != null)) {
                                ownerSnapshot.PathBehavior(paths, paths[index], paths[(index + 1)], time, pathDistance, index);
                            };
                        };
                    };
                } else {
                    {
                        var arrayIndex4:StdTypes.Int = 0;
                        var arrayIndex5:StdTypes.Int = reversedPaths.length;
                        while ((arrayIndex4 < arrayIndex5)) {
                            var index:StdTypes.Int = arrayIndex4++;
                            if ((reversedPaths[(index + 1)] != null)) {
                                ownerSnapshot.PathBehavior(reversedPaths, reversedPaths[index], reversedPaths[(index + 1)], time, pathDistance, index);
                            };
                        };
                    };
                };
                completedLoops++;
                if ((completedLoops == ownerSnapshot.loopCount)) {
                    break;
                };
            };
            if ((ownerSnapshot.onComplete != null)) {
                ownerSnapshot.onComplete();
            };
        }, "tween_path_move");
        return null;
    }

    @:hashAbi("F00F0C05722388FD0")
    public function PathBehavior(path:Array<Vector3>, p1:Vector3, p2:Vector3, time:Float, pathDistance:Float, nowIndex:Int):Dynamic
    {
        var segmentTime:StdTypes.Float = (time * (cppbindings.C7A48E3FC.f38BA082F((cast p1)[1], (cast p1)[2], (cast p1)[3], (cast p2)[1], (cast p2)[2], (cast p2)[3]) / pathDistance));
        this.targetTime = segmentTime;
        this.pauseStackTime = 0;
        {
            var _this:cppbindings.C4722FD2B = this.tween;
            var duration:cppbindings.C896B7995 = cppbindings.C896B7995.f047D37EE(segmentTime);
            {
                _this.f97571D92((cast p1)[1], (cast p1)[2], (cast p1)[3], (cast p2)[1], (cast p2)[2], (cast p2)[3], duration, 0);
            };
        };
        var nextRotation:cppbindings.CD5675BA5 = cppbindings.CD5675BA5.f0151A26E();
        cppbindings.CD5675BA5.f0151A26E();
        var rotationProgress:StdTypes.Float = 0.0;
        if ((this.lockAtValue > 0)) {
            nextRotation = ({
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
                    cppbindings.CD5675BA5.fB5706664((cast p2)[1], (cast p2)[2], (cast p2)[3], (cast from)[1], (cast from)[2], (cast from)[3], (cast up)[1], (cast up)[2], (cast up)[3]);
                };
            });
            this.obj.f16155D9E();
        };
        if ((this.onPathChange != null)) {
            this.onPathChange(nowIndex);
        };
        while ((!this.tween.fFFAA5D50() && !this.isForceStop)) {
            this.nowTweenValue = ({
                var _this:cppbindings.C4722FD2B = this.tween;
                {
                    var v:cppbindings.Vec3 = _this.f77EC8F2F();
                    {
                        var x:StdTypes.Float = v.x;
                        var y:StdTypes.Float = v.y;
                        var z:StdTypes.Float = v.z;
                        var vectorValues9:lua.Table<Int, Float>;
                        vectorValues9 = (lua.Table.create(([x, y, z] : Array<Float>)));
                        cast (cast vectorValues9);
                    };
                };
            });
            {
                var _this:cppbindings.C3FB42236 = this.obj;
                var translation:lua.Table<Int, Float> = this.nowTweenValue;
                {
                    _this.f8F2B0552((cast translation)[1], (cast translation)[2], (cast translation)[3]);
                };
                translation;
            };
            if ((this.lockAtValue > 0)) {
                {
                    var _this:cppbindings.C3FB42236 = this.obj;
                    var rotation:cppbindings.CD5675BA5 = cppbindings.CD5675BA5.fBE61A5F8(this.obj.f16155D9E(), nextRotation, rotationProgress);
                    _this.f24032F87(rotation);
                    rotation;
                };
                rotationProgress = (if ((rotationProgress < 1)) {
                    rotationProgress + this.lockAtValue;
                } else {
                    1;
                });
            };
            this.DebugTweenPath(path, nowIndex);
            if ((this.onUpdate != null)) {
                this.onUpdate(null);
            };
            ti.Coroutine.yield();
        };
        this.nowTweenValue = ({
            var _this:cppbindings.C4722FD2B = this.tween;
            {
                var v:cppbindings.Vec3 = _this.f77EC8F2F();
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
        {
            var _this:cppbindings.C3FB42236 = this.obj;
            var translation:lua.Table<Int, Float> = this.nowTweenValue;
            {
                _this.f8F2B0552((cast translation)[1], (cast translation)[2], (cast translation)[3]);
            };
            translation;
        };
        return null;
    }

    @:hashAbi("F4BA557BEDCE27B8F")
    public function CreateCoroutinePathCatmullRomMove(paths:Array<Vector3>, isTimeType:Bool, time:Float, speed:Float):Dynamic
    {
        var ownerSnapshot:main.util.tween.TweenUtil = this;
        this.ResetParam();
        var completedLoops:StdTypes.Int = 0;
        var startValue:lua.Table<Int, Float> = ((lua.Table.create(([0, 0, 0] : Array<Float>))));
        var endValue:lua.Table<Int, Float> = ((lua.Table.create(([1, 0, 0] : Array<Float>))));
        if (isTimeType) {
            this.targetTime = time;
        };
        this.m_mainCoroutine = new ti.Coroutine(function():StdTypes.Void {
            ownerSnapshot.catmullRom = new main.util.tween.TweenCatmullRomUtil(ownerSnapshot.obj);
            ownerSnapshot.catmullRom.SetUp(paths, ownerSnapshot.catmullRomOption);
            if (!isTimeType) {
                var pathDistance:StdTypes.Float = ownerSnapshot.catmullRom.pathCatmullRomUtil.GetTortalDistance();
                time = main.util.tween.TweenMathUtil.DistanceToSecondsSimple(pathDistance, speed);
                ownerSnapshot.targetTime = time;
            };
            while (!ownerSnapshot.isForceStop) {
                ownerSnapshot.pauseStackTime = 0;
                if ((((completedLoops % 2) == 0) || (ownerSnapshot.loopType == main.util.tween.TweenLoopType.Restart))) {
                    {
                        var _this:cppbindings.C4722FD2B = ownerSnapshot.tween;
                        var duration:cppbindings.C896B7995 = cppbindings.C896B7995.f047D37EE(time);
                        var smoothing:StdTypes.Int = (if ((ownerSnapshot.ease == null)) cast 0 else ownerSnapshot.ease);
                        if ((smoothing == null)) smoothing = 0;
                        {
                            _this.f97571D92((cast startValue)[1], (cast startValue)[2], (cast startValue)[3], (cast endValue)[1], (cast endValue)[2], (cast endValue)[3], duration, smoothing);
                        };
                    };
                } else {
                    {
                        var _this:cppbindings.C4722FD2B = ownerSnapshot.tween;
                        var duration:cppbindings.C896B7995 = cppbindings.C896B7995.f047D37EE(time);
                        var smoothing:StdTypes.Int = (if ((ownerSnapshot.ease == null)) cast 0 else ownerSnapshot.ease);
                        if ((smoothing == null)) smoothing = 0;
                        {
                            _this.f97571D92((cast endValue)[1], (cast endValue)[2], (cast endValue)[3], (cast startValue)[1], (cast startValue)[2], (cast startValue)[3], duration, smoothing);
                        };
                    };
                };
                while ((!ownerSnapshot.tween.fFFAA5D50() && !ownerSnapshot.isForceStop)) {
                    ownerSnapshot.OnUpdatePathCatmullRomValue(ownerSnapshot.catmullRom, ({
                        var _this:cppbindings.C4722FD2B = ownerSnapshot.tween;
                        {
                            var v:cppbindings.Vec3 = _this.f77EC8F2F();
                            {
                                var x:StdTypes.Float = v.x;
                                var y:StdTypes.Float = v.y;
                                var z:StdTypes.Float = v.z;
                                var vectorValues5:lua.Table<Int, Float>;
                                vectorValues5 = (lua.Table.create(([x, y, z] : Array<Float>)));
                                cast (cast vectorValues5);
                            };
                        };
                    }), completedLoops);
                    ti.Coroutine.yield();
                };
                completedLoops++;
                if ((completedLoops == ownerSnapshot.loopCount)) {
                    break;
                };
            };
            ownerSnapshot.OnUpdatePathCatmullRomValue(ownerSnapshot.catmullRom, ({
                var _this:cppbindings.C4722FD2B = ownerSnapshot.tween;
                {
                    var v:cppbindings.Vec3 = _this.f77EC8F2F();
                    {
                        var x:StdTypes.Float = v.x;
                        var y:StdTypes.Float = v.y;
                        var z:StdTypes.Float = v.z;
                        var vectorValues7:lua.Table<Int, Float>;
                        vectorValues7 = (lua.Table.create(([x, y, z] : Array<Float>)));
                        cast (cast vectorValues7);
                    };
                };
            }), completedLoops);
            if ((ownerSnapshot.onComplete != null)) {
                ownerSnapshot.onComplete();
            };
        }, "tween_PathCatmullRomMove");
        return null;
    }

    @:hashAbi("F1E63964EEBFB0827")
    public function OnUpdatePathCatmullRomValue(tcr:TweenCatmullRomUtil, tweenValue:Vector3, loopCount:Int):Dynamic
    {
        tcr.SetCurveRT((cast tweenValue)[1]);
        if (this.isDebugLine) {
            tcr.DebugDrawLine();
        };
        this.nowTweenValue = tweenValue;
        if ((this.onUpdate != null)) {
            var output:main.util.tween.TweenOutputParam = new main.util.tween.TweenOutputParam();
            output.value_n = (cast tweenValue)[1];
            output.loopCount = loopCount;
            output.pathIndex = tcr.pathCatmullRomUtil.nowPathIndex;
            output.pathNormalValue = tcr.pathCatmullRomUtil.nowPathNormalValue;
            this.onUpdate(output);
        };
        return null;
    }

    @:hashAbi("F3BC3E2DE6CE68A7D")
    public function TweenUpDate(?context:Dynamic):Dynamic
    {
        if (m_mainCoroutine != null && lua.Coroutine.status(m_mainCoroutine.m_coroutine) != Dead
            && get_StateInternal() != InternalState.Finished && !isPause)
        {
            Update(context);
        }
        return null;
    }

    @:hashAbi("F114754BEACB4547C")
    public function TweenUpdateNoJobContext():Dynamic
    {
        if (m_mainCoroutine != null && lua.Coroutine.status(m_mainCoroutine.m_coroutine) != Dead
            && get_StateInternal() != InternalState.Finished && !isPause)
        {
            Update(null);
        }
        return null;
    }

    @:hashAbi("F7B1493ADECD2288D")
    public function Pause():Dynamic
    {
        if (!this.isPause) {
            this.tween.fDC199749();
            this.isPause = true;
        };
        return null;
    }

    @:hashAbi("F3C93DF9C47B1912A")
    public function Resume():Dynamic
    {
        if (this.isPause) {
            this.pauseStackTime += this.tween.f41DA87A0().f51BF3075();
            var remainingTime:StdTypes.Float = (this.targetTime - this.pauseStackTime);
            if ((remainingTime > 0)) {
                {
                    var _this:cppbindings.C4722FD2B = this.tween;
                    var subject:lua.Table<Int, Float> = this.nowTweenValue;
                    var target:lua.Table<Int, Float> = ({
                        var _this:cppbindings.C4722FD2B = this.tween;
                        {
                            var v:cppbindings.Vec3 = _this.f77EC8F2F();
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
                    var totalDuration:cppbindings.C896B7995 = cppbindings.C896B7995.f047D37EE(remainingTime);
                    var smoothing:StdTypes.Int = (if ((this.ease == null)) cast 0 else this.ease);
                    if ((smoothing == null)) smoothing = 0;
                    {
                        _this.f5678C471((cast subject)[1], (cast subject)[2], (cast subject)[3], (cast target)[1], (cast target)[2], (cast target)[3], totalDuration, smoothing);
                    };
                };
            };
            this.isPause = false;
        };
        return null;
    }

    @:hashAbi("FB50C9ACDC127E3B9")
    public function kill():Dynamic
    {
        onUpdate = null;
        onPathChange = null;
        onComplete = null;
        isForceStop = true;
        m_mainCoroutine = null;
        return null;
    }

    @:hashAbi("FBD85BEF51374A611")
    public function ResetParam():Dynamic
    {
        this.isForceStop = false;
        this.loopCount = 1;
        this.loopType = main.util.tween.TweenLoopType.Yoyo;
        this.lockAtValue = 0;
        this.ease = (cast 0);
        this.isPathMoveLinearClosed = false;
        this.onUpdate = null;
        this.onPathChange = null;
        this.onComplete = null;
        return null;
    }

    @:hashAbi("F8F99AB5A87FDD37E")
    public function DebugTweenMove(p1:Vector3, p2:Vector3):Dynamic
    {
        return null;
    }

    @:hashAbi("FEB8CC4C5E87224B0")
    public function DebugTweenPath(path:Array<Vector3>, nowIndex:Int):Dynamic
    {
        if (this.isDebugLine) {
            {
                var arrayIndex:StdTypes.Int = 0;
                var arrayIndex2:StdTypes.Int = path.length;
                while ((arrayIndex < arrayIndex2)) {
                    var index:StdTypes.Int = arrayIndex++;
                };
            };
        };
        return null;
    }

    @:hashAbi("F8FAB716DB9C67174")
    public function GetIsFinish():Dynamic
    {
        return this.tween.fFFAA5D50();
    }

    @:hashAbi("FE1B998C2DEC49E51")
    public function OnUpdate(f:Dynamic->Void):Dynamic
    {
        onUpdate = f;
        return this;
    }

    @:hashAbi("FDFC20666B86B7107")
    public function OnComplete(f:()->Void):Dynamic
    {
        onComplete = f;
        return this;
    }

    @:hashAbi("FB9D98BF22BC68DB3")
    public function OnPathChange(f:Int->Void):Dynamic
    {
        onPathChange = f;
        return this;
    }

    @:hashAbi("F57B13B315CA6E9B1")
    public function SetLoop(loopCount:Int, type:TweenLoopType = Yoyo):Dynamic
    {
        this.loopCount = loopCount;
        loopType = type;
        return this;
    }

    @:hashAbi("FE870683EDFC111F9")
    public function SetLockAt(lockAtValue:Float):Dynamic
    {
        this.lockAtValue = lockAtValue;
        return this;
    }

    @:hashAbi("F74C093E903CBE9F1")
    public function SetEase(ease:EaseFunc = 0):Dynamic
    {
        this.ease = ease;
        return this;
    }

    @:hashAbi("FD99670F825CA49F4")
    public function SetPathLinearOption(closed:Bool = false):Dynamic
    {
        isPathMoveLinearClosed = closed;
        return this;
    }

    @:hashAbi("FAF4BE2DC56EF92ED")
    public function SetPathCatmullRomOption(closed:Bool = false, isLockAt:Bool = false, dividedCount:Int = 30):Dynamic
    {
        catmullRomOption.closed = closed;
        catmullRomOption.isLockAt = isLockAt;
        catmullRomOption.dividedCount = dividedCount;
        return this;
    }
}
