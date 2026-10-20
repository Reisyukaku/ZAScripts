package main.util.tween;

import cppbindings.Vector3Values as Vector3;

@:keep
@:chunk("main")
@:hashAbi("CD2CF3EDECFB0EDC0")
@:expose("CD2CF3EDECFB0EDC0")
class PathCatmullRomUtil
{
    @:abiSlot(1)
    public var points:Array<Vector3>;

    @:abiSlot(2)
    public var linePoints:Array<Vector3>;

    @:abiSlot(3)
    public var tortalLineDistance:Float;

    @:abiSlot(4)
    public var isClosed:Bool;

    @:abiSlot(5)
    public var dividedCount:Int;

    @:abiSlot(6)
    public var eachDividedCount:Int;

    @:abiSlot(7)
    public var nowPathIndex:Int;

    @:abiSlot(8)
    public var nowPathNormalValue:Float;

    @:abiSlot(9)
    public var pathDistances:Array<Null<Float>>;

    @:abiSlot(10)
    public var nowlinePointsNormal:Float;

    public function new(p:Array<Vector3>, isClosed:Bool = false, dividedCount:Int = 30)
    {
        this.nowlinePointsNormal = 0;
        this.pathDistances = [];
        this.nowPathNormalValue = 0;
        this.nowPathIndex = 0;
        this.eachDividedCount = 0;
        this.isClosed = isClosed;
        this.dividedCount = dividedCount;
        this.points = p;
        this.linePoints = this.Evaluate();
        this.SetDistance();
        this.SetMinMaxDistances();
    }

    @:hashAbi("FAA9B9F7F6282E69D")
    public function CatmullRom(t:Float, p0:Vector3, p1:Vector3, p2:Vector3, p3:Vector3):Vector3
    {
        var cubic:lua.Table<Int, Float> = ({
            var vectorValues:lua.Table<Int, Float> = ({
                var vectorValues2:lua.Table<Int, Float> = ({
                    var vectorValues3:lua.Table<Int, Float> = ((lua.Table.create(([-(cast (cast p0))[1], -(cast (cast p0))[2], -(cast (cast p0))[3]] : Array<Float>))));
                    var rhs:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast p1))[1] * 3), ((cast (cast p1))[2] * 3), ((cast (cast p1))[3] * 3)] : Array<Float>))));
                    (lua.Table.create(([((cast (cast vectorValues3))[1] + (cast rhs)[1]), ((cast (cast vectorValues3))[2] + (cast rhs)[2]), ((cast (cast vectorValues3))[3] + (cast rhs)[3])] : Array<Float>)));
                });
                var rhs:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast p2))[1] * 3), ((cast (cast p2))[2] * 3), ((cast (cast p2))[3] * 3)] : Array<Float>))));
                (lua.Table.create(([((cast (cast vectorValues2))[1] - (cast rhs)[1]), ((cast (cast vectorValues2))[2] - (cast rhs)[2]), ((cast (cast vectorValues2))[3] - (cast rhs)[3])] : Array<Float>)));
            });
            (lua.Table.create(([((cast (cast vectorValues))[1] + (cast p3)[1]), ((cast (cast vectorValues))[2] + (cast p3)[2]), ((cast (cast vectorValues))[3] + (cast p3)[3])] : Array<Float>)));
        });
        var quadratic:lua.Table<Int, Float> = ({
            var vectorValues16:lua.Table<Int, Float> = ({
                var vectorValues17:lua.Table<Int, Float> = ({
                    var vectorValues18:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast p0))[1] * 2), ((cast (cast p0))[2] * 2), ((cast (cast p0))[3] * 2)] : Array<Float>))));
                    var rhs:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast p1))[1] * 5), ((cast (cast p1))[2] * 5), ((cast (cast p1))[3] * 5)] : Array<Float>))));
                    (lua.Table.create(([((cast (cast vectorValues18))[1] - (cast rhs)[1]), ((cast (cast vectorValues18))[2] - (cast rhs)[2]), ((cast (cast vectorValues18))[3] - (cast rhs)[3])] : Array<Float>)));
                });
                var rhs:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast p2))[1] * 4), ((cast (cast p2))[2] * 4), ((cast (cast p2))[3] * 4)] : Array<Float>))));
                (lua.Table.create(([((cast (cast vectorValues17))[1] + (cast rhs)[1]), ((cast (cast vectorValues17))[2] + (cast rhs)[2]), ((cast (cast vectorValues17))[3] + (cast rhs)[3])] : Array<Float>)));
            });
            (lua.Table.create(([((cast (cast vectorValues16))[1] - (cast p3)[1]), ((cast (cast vectorValues16))[2] - (cast p3)[2]), ((cast (cast vectorValues16))[3] - (cast p3)[3])] : Array<Float>)));
        });
        var linear:lua.Table<Int, Float> = ({
            var vectorValues31:lua.Table<Int, Float> = ((lua.Table.create(([-(cast (cast p0))[1], -(cast (cast p0))[2], -(cast (cast p0))[3]] : Array<Float>))));
            (lua.Table.create(([((cast (cast vectorValues31))[1] + (cast p2)[1]), ((cast (cast vectorValues31))[2] + (cast p2)[2]), ((cast (cast vectorValues31))[3] + (cast p2)[3])] : Array<Float>)));
        });
        return ({
            var vectorValues36:lua.Table<Int, Float> = ({
                var vectorValues37:lua.Table<Int, Float> = ({
                    var vectorValues38:lua.Table<Int, Float> = ({
                        var vectorValues39:lua.Table<Int, Float> = ({
                            var vectorValues40:lua.Table<Int, Float> = ({
                                var vectorValues41:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast cubic))[1] * t), ((cast (cast cubic))[2] * t), ((cast (cast cubic))[3] * t)] : Array<Float>))));
                                (lua.Table.create(([((cast (cast vectorValues41))[1] * t), ((cast (cast vectorValues41))[2] * t), ((cast (cast vectorValues41))[3] * t)] : Array<Float>)));
                            });
                            (lua.Table.create(([((cast (cast vectorValues40))[1] * t), ((cast (cast vectorValues40))[2] * t), ((cast (cast vectorValues40))[3] * t)] : Array<Float>)));
                        });
                        var rhs:lua.Table<Int, Float> = ({
                            var vectorValues48:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast quadratic))[1] * t), ((cast (cast quadratic))[2] * t), ((cast (cast quadratic))[3] * t)] : Array<Float>))));
                            (lua.Table.create(([((cast (cast vectorValues48))[1] * t), ((cast (cast vectorValues48))[2] * t), ((cast (cast vectorValues48))[3] * t)] : Array<Float>)));
                        });
                        (lua.Table.create(([((cast (cast vectorValues39))[1] + (cast rhs)[1]), ((cast (cast vectorValues39))[2] + (cast rhs)[2]), ((cast (cast vectorValues39))[3] + (cast rhs)[3])] : Array<Float>)));
                    });
                    var rhs:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast linear))[1] * t), ((cast (cast linear))[2] * t), ((cast (cast linear))[3] * t)] : Array<Float>))));
                    (lua.Table.create(([((cast (cast vectorValues38))[1] + (cast rhs)[1]), ((cast (cast vectorValues38))[2] + (cast rhs)[2]), ((cast (cast vectorValues38))[3] + (cast rhs)[3])] : Array<Float>)));
                });
                var rhs:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast p1))[1] * 2), ((cast (cast p1))[2] * 2), ((cast (cast p1))[3] * 2)] : Array<Float>))));
                (lua.Table.create(([((cast (cast vectorValues37))[1] + (cast rhs)[1]), ((cast (cast vectorValues37))[2] + (cast rhs)[2]), ((cast (cast vectorValues37))[3] + (cast rhs)[3])] : Array<Float>)));
            });
            (lua.Table.create(([((cast (cast vectorValues36))[1] * 0.5), ((cast (cast vectorValues36))[2] * 0.5), ((cast (cast vectorValues36))[3] * 0.5)] : Array<Float>)));
        });
    }

    @:hashAbi("F0EBFF05DB8BCAC19")
    public function CatmullRomFirst(t:Float, p0:Vector3, p1:Vector3, p2:Vector3):Vector3
    {
        var quadratic:lua.Table<Int, Float> = ({
            var vectorValues:lua.Table<Int, Float> = ({
                var rhs:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast p1))[1] * 2), ((cast (cast p1))[2] * 2), ((cast (cast p1))[3] * 2)] : Array<Float>))));
                (lua.Table.create(([((cast (cast p0))[1] - (cast rhs)[1]), ((cast (cast p0))[2] - (cast rhs)[2]), ((cast (cast p0))[3] - (cast rhs)[3])] : Array<Float>)));
            });
            (lua.Table.create(([((cast (cast vectorValues))[1] + (cast p2)[1]), ((cast (cast vectorValues))[2] + (cast p2)[2]), ((cast (cast vectorValues))[3] + (cast p2)[3])] : Array<Float>)));
        });
        var linear:lua.Table<Int, Float> = ({
            var vectorValues8:lua.Table<Int, Float> = ({
                var vectorValues9:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast p0))[1] * -3), ((cast (cast p0))[2] * -3), ((cast (cast p0))[3] * -3)] : Array<Float>))));
                var rhs:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast p1))[1] * 4), ((cast (cast p1))[2] * 4), ((cast (cast p1))[3] * 4)] : Array<Float>))));
                (lua.Table.create(([((cast (cast vectorValues9))[1] + (cast rhs)[1]), ((cast (cast vectorValues9))[2] + (cast rhs)[2]), ((cast (cast vectorValues9))[3] + (cast rhs)[3])] : Array<Float>)));
            });
            (lua.Table.create(([((cast (cast vectorValues8))[1] - (cast p2)[1]), ((cast (cast vectorValues8))[2] - (cast p2)[2]), ((cast (cast vectorValues8))[3] - (cast p2)[3])] : Array<Float>)));
        });
        return ({
            var vectorValues18:lua.Table<Int, Float> = ({
                var vectorValues19:lua.Table<Int, Float> = ({
                    var vectorValues20:lua.Table<Int, Float> = ({
                        var vectorValues21:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast quadratic))[1] * t), ((cast (cast quadratic))[2] * t), ((cast (cast quadratic))[3] * t)] : Array<Float>))));
                        (lua.Table.create(([((cast (cast vectorValues21))[1] * t), ((cast (cast vectorValues21))[2] * t), ((cast (cast vectorValues21))[3] * t)] : Array<Float>)));
                    });
                    var rhs:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast linear))[1] * t), ((cast (cast linear))[2] * t), ((cast (cast linear))[3] * t)] : Array<Float>))));
                    (lua.Table.create(([((cast (cast vectorValues20))[1] + (cast rhs)[1]), ((cast (cast vectorValues20))[2] + (cast rhs)[2]), ((cast (cast vectorValues20))[3] + (cast rhs)[3])] : Array<Float>)));
                });
                var rhs:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast p0))[1] * 2), ((cast (cast p0))[2] * 2), ((cast (cast p0))[3] * 2)] : Array<Float>))));
                (lua.Table.create(([((cast (cast vectorValues19))[1] + (cast rhs)[1]), ((cast (cast vectorValues19))[2] + (cast rhs)[2]), ((cast (cast vectorValues19))[3] + (cast rhs)[3])] : Array<Float>)));
            });
            (lua.Table.create(([((cast (cast vectorValues18))[1] * 0.5), ((cast (cast vectorValues18))[2] * 0.5), ((cast (cast vectorValues18))[3] * 0.5)] : Array<Float>)));
        });
    }

    @:hashAbi("F07292FAB858A34E1")
    public function CatmullRomLast(t:Float, p0:Vector3, p1:Vector3, p2:Vector3):Vector3
    {
        var quadratic:lua.Table<Int, Float> = ({
            var vectorValues:lua.Table<Int, Float> = ({
                var rhs:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast p1))[1] * 2), ((cast (cast p1))[2] * 2), ((cast (cast p1))[3] * 2)] : Array<Float>))));
                (lua.Table.create(([((cast (cast p0))[1] - (cast rhs)[1]), ((cast (cast p0))[2] - (cast rhs)[2]), ((cast (cast p0))[3] - (cast rhs)[3])] : Array<Float>)));
            });
            (lua.Table.create(([((cast (cast vectorValues))[1] + (cast p2)[1]), ((cast (cast vectorValues))[2] + (cast p2)[2]), ((cast (cast vectorValues))[3] + (cast p2)[3])] : Array<Float>)));
        });
        var linear:lua.Table<Int, Float> = ({
            var vectorValues8:lua.Table<Int, Float> = ((lua.Table.create(([-(cast (cast p0))[1], -(cast (cast p0))[2], -(cast (cast p0))[3]] : Array<Float>))));
            (lua.Table.create(([((cast (cast vectorValues8))[1] + (cast p2)[1]), ((cast (cast vectorValues8))[2] + (cast p2)[2]), ((cast (cast vectorValues8))[3] + (cast p2)[3])] : Array<Float>)));
        });
        return ({
            var vectorValues13:lua.Table<Int, Float> = ({
                var vectorValues14:lua.Table<Int, Float> = ({
                    var vectorValues15:lua.Table<Int, Float> = ({
                        var vectorValues16:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast quadratic))[1] * t), ((cast (cast quadratic))[2] * t), ((cast (cast quadratic))[3] * t)] : Array<Float>))));
                        (lua.Table.create(([((cast (cast vectorValues16))[1] * t), ((cast (cast vectorValues16))[2] * t), ((cast (cast vectorValues16))[3] * t)] : Array<Float>)));
                    });
                    var rhs:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast linear))[1] * t), ((cast (cast linear))[2] * t), ((cast (cast linear))[3] * t)] : Array<Float>))));
                    (lua.Table.create(([((cast (cast vectorValues15))[1] + (cast rhs)[1]), ((cast (cast vectorValues15))[2] + (cast rhs)[2]), ((cast (cast vectorValues15))[3] + (cast rhs)[3])] : Array<Float>)));
                });
                var rhs:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast p1))[1] * 2), ((cast (cast p1))[2] * 2), ((cast (cast p1))[3] * 2)] : Array<Float>))));
                (lua.Table.create(([((cast (cast vectorValues14))[1] + (cast rhs)[1]), ((cast (cast vectorValues14))[2] + (cast rhs)[2]), ((cast (cast vectorValues14))[3] + (cast rhs)[3])] : Array<Float>)));
            });
            (lua.Table.create(([((cast (cast vectorValues13))[1] * 0.5), ((cast (cast vectorValues13))[2] * 0.5), ((cast (cast vectorValues13))[3] * 0.5)] : Array<Float>)));
        });
    }

    @:hashAbi("F0AC6F7F3F8855B6A")
    public function Evaluate():Array<Vector3>
    {
        if (((this.points == null) || (this.points.length < 2))) {
            return null;
        };
        var lineCount:StdTypes.Int = ((this.points.length + (if (this.isClosed) {
            1;
        } else {
            0;
        })) - 1);
        if (((this.dividedCount % lineCount) != 0)) {
            this.dividedCount = (lineCount * Std.int(lua.Math.floor((this.dividedCount / lineCount))));
        };
        if ((this.dividedCount < 1)) {
            this.dividedCount = lineCount;
        };
        var evaluated:Array<lua.Table<Int, Float>> = [];
        {
            var arrayIndex:StdTypes.Int = 0;
            var arrayIndex2:StdTypes.Int = this.dividedCount;
            while ((arrayIndex < arrayIndex2)) {
                var index:StdTypes.Int = arrayIndex++;
                evaluated.push(((lua.Table.create(([0.0, 0.0, 0.0] : Array<Float>)))));
            };
        };
        if (!this.isClosed) {
            evaluated.push(((lua.Table.create(([0.0, 0.0, 0.0] : Array<Float>)))));
        };
        this.eachDividedCount = Std.int((this.dividedCount / lineCount));
        var step:StdTypes.Float = (1 / this.eachDividedCount);
        {
            var arrayIndex3:StdTypes.Int = 0;
            var arrayIndex4:StdTypes.Int = lineCount;
            while ((arrayIndex3 < arrayIndex4)) {
                var segment:StdTypes.Int = arrayIndex3++;
                var divisions:StdTypes.Int = this.eachDividedCount;
                {
                    var arrayIndex5:StdTypes.Int = 0;
                    var arrayIndex6:StdTypes.Int = divisions;
                    while ((arrayIndex5 < arrayIndex6)) {
                        var division:StdTypes.Int = arrayIndex5++;
                        var point:lua.Table<Int, Float>;
                        if ((!this.isClosed && (segment == 0))) {
                            point = this.CatmullRomFirst((division * step), this.points[segment], this.points[(segment + 1)], this.points[(segment + 2)]);
                        } else {
                            if ((!this.isClosed && (segment == (this.points.length - 2)))) {
                                point = this.CatmullRomLast((division * step), this.points[(segment - 1)], this.points[segment], this.points[(segment + 1)]);
                            } else {
                                var previous:StdTypes.Int = (if ((segment == 0)) {
                                    this.points.length - 1;
                                } else {
                                    segment - 1;
                                });
                                point = this.CatmullRom((division * step), this.points[previous], this.points[segment], this.points[((segment + 1) % this.points.length)], this.points[((segment + 2) % this.points.length)]);
                            };
                        };
                        evaluated[((segment * this.eachDividedCount) + division)] = point;
                    };
                };
            };
        };
        if (!this.isClosed) {
            evaluated[(evaluated.length - 1)] = this.points[(this.points.length - 1)];
        } else {
            evaluated.push(this.points[0]);
        };
        return evaluated;
    }

    @:hashAbi("FD9767C4B933E91FC")
    public function SetDistance():Dynamic
    {
        this.tortalLineDistance = 0;
        var count:StdTypes.Int = this.linePoints.length;
        {
            var arrayIndex:StdTypes.Int = 0;
            var arrayIndex2:StdTypes.Int = count;
            while ((arrayIndex < arrayIndex2)) {
                var index:StdTypes.Int = arrayIndex++;
                if (((index + 1) < this.linePoints.length)) {
                    this.tortalLineDistance += ({
                        var lhs:lua.Table<Int, Float> = this.linePoints[index];
                        var rhs:lua.Table<Int, Float> = this.linePoints[(index + 1)];
                        cppbindings.C7A48E3FC.f38BA082F((cast lhs)[1], (cast lhs)[2], (cast lhs)[3], (cast rhs)[1], (cast rhs)[2], (cast rhs)[3]);
                    });
                };
            };
        };
        return null;
    }

    @:hashAbi("F6CCB799BA16B585E")
    public function GetTortalDistance():Float
    {
        return tortalLineDistance;
    }

    @:hashAbi("F6DBD5E11D3590582")
    public function GetCurveValueNormalized(t:Float):Vector3
    {
        return this.GetCurveValueDistance((if ((t >= 1)) {
            this.tortalLineDistance;
        } else {
            this.tortalLineDistance * t;
        }));
    }

    @:hashAbi("F04FCE53748E39890")
    public function GetCurveValueDistance(targetL:Float):Vector3
    {
        var distance:StdTypes.Float = 0.0;
        var point:lua.Table<Int, Float> = (if (this.isClosed) {
            this.linePoints[0];
        } else {
            this.linePoints[(this.linePoints.length - 1)];
        });
        this.nowlinePointsNormal = 0;
        if (((targetL > this.GetTortalDistance()) && (targetL != this.GetTortalDistance()))) {
            targetL %= this.GetTortalDistance();
        };
        var count:StdTypes.Int = this.linePoints.length;
        {
            var arrayIndex:StdTypes.Int = 0;
            var arrayIndex2:StdTypes.Int = count;
            while ((arrayIndex < arrayIndex2)) {
                var index:StdTypes.Int = arrayIndex++;
                if (((index + 1) < this.linePoints.length)) {
                    distance += ({
                        var lhs:lua.Table<Int, Float> = this.linePoints[index];
                        var rhs:lua.Table<Int, Float> = this.linePoints[(index + 1)];
                        cppbindings.C7A48E3FC.f38BA082F((cast lhs)[1], (cast lhs)[2], (cast lhs)[3], (cast rhs)[1], (cast rhs)[2], (cast rhs)[3]);
                    });
                    if ((targetL <= distance)) {
                        var startDistance:StdTypes.Float = (distance - ({
                            var lhs:lua.Table<Int, Float> = this.linePoints[index];
                            var rhs:lua.Table<Int, Float> = this.linePoints[(index + 1)];
                            cppbindings.C7A48E3FC.f38BA082F((cast lhs)[1], (cast lhs)[2], (cast lhs)[3], (cast rhs)[1], (cast rhs)[2], (cast rhs)[3]);
                        }));
                        var normal:StdTypes.Float = main.util.tween.TweenMathUtil.InverseLerp(startDistance, distance, targetL);
                        point = ({
                            var lhs:lua.Table<Int, Float> = this.linePoints[index];
                            var rhs:lua.Table<Int, Float> = this.linePoints[(index + 1)];
                            {
                                var v:cppbindings.Vec3 = cppbindings.C7A48E3FC.f74C1A5DE((cast lhs)[1], (cast lhs)[2], (cast lhs)[3], (cast rhs)[1], (cast rhs)[2], (cast rhs)[3], normal);
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
                        this.nowPathIndex = Std.int((index / this.eachDividedCount));
                        var minDistance:StdTypes.Float = this.GetMinDistances(this.nowPathIndex);
                        var maxDistance:StdTypes.Float = this.GetMaxDistances(this.nowPathIndex);
                        var pointDistance:StdTypes.Float = (startDistance + ({
                            var lhs:lua.Table<Int, Float> = this.linePoints[index];
                            cppbindings.C7A48E3FC.f38BA082F((cast lhs)[1], (cast lhs)[2], (cast lhs)[3], (cast point)[1], (cast point)[2], (cast point)[3]);
                        }));
                        this.nowPathNormalValue = main.util.tween.TweenMathUtil.InverseLerp(minDistance, maxDistance, pointDistance);
                        this.nowlinePointsNormal = normal;
                        break;
                    };
                };
            };
        };
        return point;
    }

    @:hashAbi("F14250B23A00D8F2F")
    public function SetMinMaxDistances():Dynamic
    {
        var count:StdTypes.Int = (this.points.length + (if (this.isClosed) {
            0;
        } else {
            -1;
        }));
        {
            var arrayIndex:StdTypes.Int = 0;
            var arrayIndex2:StdTypes.Int = count;
            while ((arrayIndex < arrayIndex2)) {
                var index:StdTypes.Int = arrayIndex++;
                var distance:StdTypes.Float = 0.0;
                var divisions:StdTypes.Int = this.eachDividedCount;
                {
                    var arrayIndex3:StdTypes.Int = 0;
                    var arrayIndex4:StdTypes.Int = divisions;
                    while ((arrayIndex3 < arrayIndex4)) {
                        var division:StdTypes.Int = arrayIndex3++;
                        var start:lua.Table<Int, Float> = this.linePoints[((index * this.eachDividedCount) + division)];
                        var end:lua.Table<Int, Float> = this.linePoints[(((index * this.eachDividedCount) + division) + 1)];
                        distance += cppbindings.C7A48E3FC.f38BA082F((cast start)[1], (cast start)[2], (cast start)[3], (cast end)[1], (cast end)[2], (cast end)[3]);
                    };
                };
                this.pathDistances[index] = distance;
            };
        };
        return null;
    }

    @:hashAbi("FF408C7222DE382E7")
    public function GetMinDistances(index:Int):Float
    {
        var distance = 0.0;
        for (current in 0...index)
        {
            var segment = pathDistances[current];
            if (segment != null)
            {
                distance += segment;
            }
        }
        return distance;
    }

    @:hashAbi("F9526F78D8AEB84F1")
    public function GetMaxDistances(index:Int):Float
    {
        var distance = 0.0;
        var end = index + 1;
        for (current in 0...end)
        {
            var segment = pathDistances[current];
            if (segment != null)
            {
                distance += segment;
            }
        }
        return distance;
    }

    @:hashAbi("FC50C95E29E31BD98")
    public function DebugDrawLine():Dynamic
    {
        var count:StdTypes.Int = this.linePoints.length;
        {
            var arrayIndex:StdTypes.Int = 0;
            var arrayIndex2:StdTypes.Int = count;
            while ((arrayIndex < arrayIndex2)) {
                var index:StdTypes.Int = arrayIndex++;
            };
        };
        var index:StdTypes.Int = 0;
        while ((index < this.points.length)) {
            index++;
        };
        return null;
    }
}
