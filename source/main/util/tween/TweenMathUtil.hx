package main.util.tween;

import lua.Table;

@:keep
@:chunk("main")
@:hashAbi("C6C6AD5246ABFE1B0")
@:expose("C6C6AD5246ABFE1B0")
class TweenMathUtil
{
    @:hashAbi("S4F742D7FCA3ECDA6")
    public static function DistanceToSecondsSimple(distance:Float, speed:Float):Float
    {
        return distance * 0.001 / speed * 3600;
    }

    @:hashAbi("S3F70035184E21EE4")
    public static function DistanceToSeconds(a:Table<Int, Float>, b:Table<Int, Float>, speed:Float):Float
    {
        return main.util.tween.TweenMathUtil.DistanceToSecondsSimple(({
            var lhs:lua.Table<Int, Float> = (cast a);
            var rhs:lua.Table<Int, Float> = (cast b);
            cppbindings.C7A48E3FC.f38BA082F((cast lhs)[1], (cast lhs)[2], (cast lhs)[3], (cast rhs)[1], (cast rhs)[2], (cast rhs)[3]);
        }), speed);
    }

    @:hashAbi("S6A6C1881AA58AAE1")
    public static function ArrayDistanceToSeconds(points:Array<Table<Int, Float>>, speed:Float):Float
    {
        return DistanceToSecondsSimple(ArrayDistance(points), speed);
    }

    @:hashAbi("S4F314783E0C46AED")
    public static function ArrayDistance(points:Array<Table<Int, Float>>):Float
    {
        var total:StdTypes.Float = 0.0;
        {
            var arrayIndex:StdTypes.Int = 0;
            var arrayIndex2:StdTypes.Int = points.length;
            while ((arrayIndex < arrayIndex2)) {
                var i:StdTypes.Int = arrayIndex++;
                if ((points[(i + 1)] != null)) {
                    total += ({
                        var lhs:lua.Table<Int, Float> = (cast points[i]);
                        var rhs:lua.Table<Int, Float> = (cast points[(i + 1)]);
                        cppbindings.C7A48E3FC.f38BA082F((cast lhs)[1], (cast lhs)[2], (cast lhs)[3], (cast rhs)[1], (cast rhs)[2], (cast rhs)[3]);
                    });
                };
            };
        };
        return total;
    }

    @:hashAbi("SBA941559F53ECC9A")
    public static function InverseLerp(start:Float, end:Float, value:Float):Float
    {
        return (value - start) / (end - start);
    }
}
