package lua.abi;

import main.event.ik.command.IkScriptCommand;

import lua.Table;

class EventHost {
    public static inline function truthy(value:Dynamic):Bool
        return value != null && value != false;

    public static inline function vector(x:Float, y:Float, z:Float):Table<Int, Float>
        return Table.create([x, y, z]); // Native vectors are 1-based, unlike Haxe arrays.

    public static inline function position(obj:Dynamic):Table<Int, Float>
        return untyped __lua__("({{ {0}:f7360ED03() }})", obj);

    public static inline function forward(rotation:Dynamic):Table<Int, Float>
        return untyped __lua__("({{ {0}:fCA247E7A(0, 0, 1) }})", rotation);

    public static inline function angles(rotation:Dynamic):Table<Int, Float>
        return untyped __lua__("({{ {0}:f643B5D6F() }})", rotation);

    // Preserve all Lua return values passed directly into the waiting service.
    public static inline function moveAndWait(x:Float, y:Float, z:Float, angle:Float):Void
        untyped __lua__("C0C062DE5AED06885.S0958C602F426FF59(C0C062DE5AED06885.S96D48505638D0B7B('Player', {0}, {1}, {2}, {3}))", x, y, z, angle);

    public static inline function animationAndWait(id:Int):Void
        untyped __lua__("C0C062DE5AED06885.S0958C602F426FF59(C0C062DE5AED06885.SC2E67F4B3F157211('Player', {0}))", id);

    public static inline function prepareAndWait(id:Int):Void
        untyped __lua__("C0C062DE5AED06885.S0958C602F426FF59(C0C062DE5AED06885.S64AD521A4557D4C8('Player', {0}))", id);

    public static inline function idleAndWait(id:Int):Void
        untyped __lua__("C0C062DE5AED06885.S0958C602F426FF59(C0C062DE5AED06885.S83CD71CD25CA742A('Player', {0}))", id);
}
