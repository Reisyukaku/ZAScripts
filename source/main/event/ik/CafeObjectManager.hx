package main.event.ik;

import cppbindings.Vector3Values as Vector3;
import cppbindings.CD5675BA5 as Quaternion;
import cppbindings.CA042DA13 as Scene;
import cppbindings.C016374C1 as SceneObject;
import cppbindings.C451059A3 as ObjectTemplate;
import cppbindings.CECB91E31 as ModelComponent;
import cppbindings.C44E7275D as CastResult;
import cppbindings.CA915E6CD as RayCastOptionFlags;
import StdTypes.Int as RayCastOptionFlagType;
import cppbindings.C98FA6616 as PhysicsUtility;
import main.event.ik.command.IkScriptCommand;

@:keep
@:chunk("main")
@:hashAbi("CF8BF2A0E1DDFCAEB")
@:expose("CF8BF2A0E1DDFCAEB")
class CafeObjectManager
{
    @:hashAbi("S3E916EB37B6A48C8")
    public static var s_reserveCount:Dynamic = 0;
    @:hashAbi("SA0DA4C66378163EC")
    public static var s_objectList:haxe.ds.List<SceneObject> = new haxe.ds.List();

    @:hashAbi("S805CA52A14D4517F")
    public static function TerminateAll():Dynamic
    {
        for (object in main.event.ik.CafeObjectManager.s_objectList.iterator()) {
            {
                var withChildren:StdTypes.Bool = true;
                if ((withChildren == null)) withChildren = true;
                object.fCDCB600D(withChildren);
            };
        };
        main.event.ik.CafeObjectManager.s_reserveCount = 0;
        main.event.ik.CafeObjectManager.s_objectList.clear();
        return null;
    }
    @:hashAbi("S0E027E78D60839BF")
    public static function WaitCreateAll():Dynamic
    {
        IkScriptCommand.Suspend();
        while (s_reserveCount != 0)
        {
            IkScriptCommand.Suspend();
        }
        return null;
    }
    @:hashAbi("S75C56907A6102798")
    public static function VisibleAll():Dynamic
    {
        for (object in main.event.ik.CafeObjectManager.s_objectList.iterator()) {
            var model:StdTypes.Null<cppbindings.CECB91E31> = cppbindings.CECB91E31.fB41FD22F(object);
            model.f6754453E(true);
        };
        return null;
    }
    @:hashAbi("SF178D9ABB5441E03")
    public static function CoCreateDrink(?capType:String, ?name:Dynamic, ?position:Vector3, ?degree:Dynamic):Dynamic
    {
        if ((name == null)) {
            name = "";
        };
        main.event.ik.CafeObjectManager.s_reserveCount++;
        var templateName:String = "cafe_drink";
        if ((capType.indexOf("ob0011_00") != -1)) {
            templateName = "cafe_drink_steam_cup";
        } else {
            if ((capType.indexOf("ob0011_01") != -1)) {
                templateName = "cafe_drink_steam_pot";
            };
        };
        var template:StdTypes.Null<cppbindings.C451059A3> = cppbindings.C451059A3.f5776B6C6((((("world/ik_obj_template/event/" + templateName) + "_/") + templateName) + ".trsot"));
        while (!template.f900312E7()) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        var scene:cppbindings.CA042DA13 = main.event.ik.EventScriptManager.GetSene();
        var object:StdTypes.Null<cppbindings.C016374C1> = ({
            var name:String = ((("CafeDrink_" + Std.string(capType)) + "_") + Std.string(name));
            scene.f68159593(name, template);
        });
        while ((!object.f9D8BC178() || !object.f48F8C7FF())) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        var model:StdTypes.Null<cppbindings.CECB91E31> = cppbindings.CECB91E31.fB41FD22F(object);
        model.f6754453E(false);
        var hitPosition:lua.Table<Int, Float> = main.event.ik.CafeObjectManager.GetHitRayPos(position);
        {
            {
                object.f8F2B0552((cast hitPosition)[1], (cast hitPosition)[2], (cast hitPosition)[3]);
            };
            hitPosition;
        };
        {
            var rotation:cppbindings.CD5675BA5 = cppbindings.CD5675BA5.fFA44D7AF((((degree / 360.0) * 2) * lua.Math.pi), 0, 0);
            object.f24032F87(rotation);
            rotation;
        };
        main.event.ik.command.IkScriptCommand.ChangeCharaCre(object, capType);
        cppbindings.C56DE81E7.f2697A3DD(model, 1, true);
        main.event.ik.CafeObjectManager.s_objectList.add(object);
        main.event.ik.CafeObjectManager.s_reserveCount--;
        return null;
    }
    @:hashAbi("S9C15823A80A409C3")
    public static function CoCreateSnack(?snackType:Dynamic, ?name:Dynamic, ?position:Vector3, ?degree:Dynamic):Dynamic
    {
        if ((name == null)) {
            name = "";
        };
        main.event.ik.CafeObjectManager.s_reserveCount++;
        var template:StdTypes.Null<cppbindings.C451059A3> = cppbindings.C451059A3.f5776B6C6("world/ik_obj_template/event/cafe_food_/cafe_food.trsot");
        while (!template.f900312E7()) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        var scene:cppbindings.CA042DA13 = main.event.ik.EventScriptManager.GetSene();
        var object:StdTypes.Null<cppbindings.C016374C1> = ({
            var name:String = ((("CafeSnack_" + Std.string(snackType)) + "_") + Std.string(name));
            scene.f68159593(name, template);
        });
        while ((!object.f9D8BC178() || !object.f48F8C7FF())) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        var model:StdTypes.Null<cppbindings.CECB91E31> = cppbindings.CECB91E31.fB41FD22F(object);
        model.f6754453E(false);
        var hitPosition:lua.Table<Int, Float> = main.event.ik.CafeObjectManager.GetHitRayPos(position);
        {
            {
                object.f8F2B0552((cast hitPosition)[1], (cast hitPosition)[2], (cast hitPosition)[3]);
            };
            hitPosition;
        };
        {
            var rotation:cppbindings.CD5675BA5 = cppbindings.CD5675BA5.fFA44D7AF((((degree / 360.0) * 2) * lua.Math.pi), 0, 0);
            object.f24032F87(rotation);
            rotation;
        };
        main.event.ik.command.IkScriptCommand.ChangeCharaCre(object, snackType);
        cppbindings.C56DE81E7.f2697A3DD(model, 1, true);
        main.event.ik.CafeObjectManager.s_objectList.add(object);
        main.event.ik.CafeObjectManager.s_reserveCount--;
        return null;
    }
    @:hashAbi("SF682C96F89644936")
    public static function GetHitRayPos(?startPos:Vector3):Dynamic
    {
        var flags:cppbindings.CA915E6CD = ({
            var vectorValues:cppbindings.CA915E6CD;
            vectorValues = cppbindings.CA915E6CD.f7AC1FE6B((cast 8));
            cast (cast vectorValues);
        });
        flags.fC71B3CED(({
            var vectorValues2:cppbindings.CA915E6CD;
            vectorValues2 = cppbindings.CA915E6CD.f7AC1FE6B((cast 2));
            cast (cast vectorValues2);
        }));
        var result:cppbindings.C44E7275D = cppbindings.C44E7275D.f101D811F();
        var end:lua.Table<Int, Float> = ((lua.Table.create(([(cast startPos)[1], ((cast startPos)[2] + (-1)), (cast startPos)[3]] : Array<Float>))));
        if (({
            var count:StdTypes.Int = 1;
            var option:StdTypes.Null<cppbindings.CA915E6CD> = flags;
            if ((count == null)) count = 1;
            if ((option == null)) {
                option = (cast ({
                    var vectorValues5:cppbindings.CA915E6CD;
                    vectorValues5 = cppbindings.CA915E6CD.f0DC6CEFD();
                    cast (cast vectorValues5);
                }));
            };
            cppbindings.C98FA6616.fD324515F(result, (cast startPos)[1], (cast startPos)[2], (cast startPos)[3], (cast end)[1], (cast end)[2], (cast end)[3], count, (cast (cast option)), function(_:cppbindings.CA877D16F):StdTypes.Bool {
                return true;
            });
        })) {
            return ({
                var v:cppbindings.Vec3 = result.f1B877572();
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues6:lua.Table<Int, Float>;
                    vectorValues6 = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues6);
                };
            });
        };
        return startPos;
    }
}
