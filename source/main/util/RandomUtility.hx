package main.util;

@:keep
@:chunk("main")
@:hashAbi("C764E5AE41553760D")
@:expose("C764E5AE41553760D")
class RandomUtility
{
    @:hashAbi("SFEAB192CFEA44332")
    public static var m_rng:cppbindings.C1A00019C;

    @:hashAbi("S9690841ED751ADD5")
    public static function get_Rng():Dynamic
    {
        if ((main.util.RandomUtility.m_rng == null)) {
            main.util.RandomUtility.m_rng = cppbindings.C1A00019C.f101D811F();
            {
                var _this:cppbindings.C1A00019C = main.util.RandomUtility.m_rng;
                _this.f8C8B6BB6();
            };
        };
        return main.util.RandomUtility.m_rng;
    }
}
