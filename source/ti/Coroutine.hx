package ti;

@:keep
@:chunk("main")
@:hashAbi("C1DB14DCC9D7634FA")
@:expose("C1DB14DCC9D7634FA")
class Coroutine
{
    @:abiSlot(1)
    public var m_coroutine:lua.Coroutine<Dynamic>;

    @:abiSlot(2)
    public var Name:String;

    public function new(callback:Dynamic, ?name:String)
    {
        m_coroutine = lua.Coroutine.create(callback);
        Name = name == null ? "NoName" : name;
    }

    @:hashAbi("S760DAE4C5371A78E")
    public static function yield(?value:Dynamic):Dynamic
    {
        if (lua.Coroutine.running().status)
        {
            throw new haxe.Exception("!Cannot yield main coroutine");
        }
        return lua.Coroutine.yield(value);
    }
}
