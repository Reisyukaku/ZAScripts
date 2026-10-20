package main.util;

import cppbindings.C465FF34C as PSTable;

@:keep
@:chunk("main")
@:hashAbi("CA5EA85D96A5EBA15")
@:expose("CA5EA85D96A5EBA15")
abstract PSTableAccessor(PSTable) from PSTable to PSTable
{
    @:hashAbi("S7153C11CA829BCB8")
    public static function GetInt(?this1:PSTable, ?name:String):Dynamic
    {
        var value:StdTypes.Null<StdTypes.Null<StdTypes.Int>> = (if ((this1 == null)) {
            null;
        } else {
            this1.f0DE4A994(name);
        });
        return (if ((value == null)) {
            0;
        } else {
            value;
        });
    }

    @:hashAbi("SAD5CCB7549BC2093")
    public static function GetFloat(?this1:PSTable, ?name:String):Dynamic
    {
        var value:StdTypes.Null<StdTypes.Null<StdTypes.Float>> = (if ((this1 == null)) {
            null;
        } else {
            this1.f22FC612C(name);
        });
        return (if ((value == null)) {
            0;
        } else {
            value;
        });
    }

    @:hashAbi("S4EAF82A0C1965109")
    public static function GetTable(?this1:PSTable, ?name:String):Dynamic
    {
        return (if ((this1 == null)) {
            null;
        } else {
            this1.f1D70B0FF(name);
        });
    }

    @:hashAbi("S6E0CA6729663B518")
    public static function IterateEnumList(?this1:PSTable, ?name:String, ?func:Dynamic):Dynamic
    {
        var count:StdTypes.Int = main.util.PSTableAccessor.getListSize(this1, name);
        if ((count == 0)) {
            return null;
        };
        if ((this1 != null)) {
            var list:StdTypes.Null<cppbindings.CE22CD062> = this1.f13C17EDD(name);
            {
                var arrayIndex:StdTypes.Int = 0;
                var arrayIndex2:StdTypes.Int = count;
                while ((arrayIndex < arrayIndex2)) {
                    var index:StdTypes.Int = arrayIndex++;
                    var entry:StdTypes.Null<cppbindings.CA85A862B> = list.f59B72894(index);
                    func(entry.fE9C29DA1(), entry.f55728F9C());
                };
            };
        };
        return null;
    }

    @:hashAbi("S01D67550130FC696")
    public static function getListSize(?this1:PSTable, ?name:String):Dynamic
    {
        var list:StdTypes.Null<StdTypes.Null<cppbindings.CE22CD062>> = (if ((this1 == null)) {
            null;
        } else {
            this1.f13C17EDD(name);
        });
        return (if ((list == null)) {
            0;
        } else {
            list.f4021C7CD();
        });
    }
}
