package main.event.ik.command;

import cppbindings.C56DE81E7;
import cppbindings.CF6FC4F7D as UnitParty;
import cppbindings.C74C8A0A4 as BasePokemonParam;

@:keep
@:chunk("main")
@:hashAbi("C6ABE0861E0B8806D")
@:expose("C6ABE0861E0B8806D")
class BoxSingleSelectCommand
{
    @:hashAbi("S7D3299A27640E594")
    public static function GetSelectPokemon():Dynamic
    {
        var selection:{ public var fE8D54AA7(default, null) : Dynamic; public var fA8F1F966(default, null) : Dynamic; public var f33F016EA(default, null) : () -> UInt; public var f32F564D5(default, null) : Dynamic; } = cppbindings.C56DE81E7.f0CD8FF74();
        if (lua.abi.Host.truthy(selection.fE8D54AA7())) {
            return null;
        };
        if (lua.abi.Host.truthy(selection.f32F564D5())) {
            var player:{ public var fA1DE81A4(default, null) : () -> cppbindings.CF6FC4F7D; } = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent("Player");
            var party:cppbindings.CF6FC4F7D = player.fA1DE81A4();
            var position:UInt = selection.f33F016EA();
            var member:StdTypes.Null<cppbindings.CDB937D14> = party.f701A6236(position);
            return cppbindings.C74C8A0A4.f1BBDCE4B(member);
        };
        var tray:Dynamic = selection.fA8F1F966();
        var position:UInt = selection.f33F016EA();
        return cppbindings.C56DE81E7.f6AA17B5F(tray, position);
    }

    @:hashAbi("S9D95343DACA3FBAE")
    public static function RemoveSelectPokemon():Dynamic
    {
        var selection = C56DE81E7.f0CD8FF74();
        if (lua.abi.Host.truthy(selection.fE8D54AA7()))
        {
            return null;
        }
        if (lua.abi.Host.truthy(selection.f32F564D5()))
        {
            var position = selection.f33F016EA();
            C56DE81E7.f0F5C1244(position);
        }
        else
        {
            var tray = selection.fA8F1F966();
            var position = selection.f33F016EA();
            C56DE81E7.fA8435C5D(tray, position);
        }
        return null;
    }

    @:hashAbi("SF41F880D06394A5F")
    public static function OverrideSelectBoxPokemon(?param:Dynamic):Dynamic
    {
        var selection = C56DE81E7.f0CD8FF74();
        if (lua.abi.Host.truthy(selection.fE8D54AA7()))
        {
            return null;
        }
        if (lua.abi.Host.truthy(selection.f32F564D5()))
        {
            return null;
        }
        var tray = selection.fA8F1F966();
        var position = selection.f33F016EA();
        C56DE81E7.fDAAD2DA3(tray, position, param);
        return null;
    }

    @:hashAbi("SFE465BC07B814937")
    public static function StartBoxSingleSelectMode(?param:Dynamic, ?arg1:Dynamic):Dynamic
    {
        C56DE81E7.f2B180472();
        C56DE81E7.f3B75B530(param, arg1);
        IkScriptCommand.Suspend();
        IkScriptCommand.Wait_OtherStateRunning();
        IkScriptCommand.Suspend();
        return GetSelectPokemon();
    }

    @:hashAbi("SABE60B847122544C")
    public static function TradeFromNpc(?tradeId:Dynamic, ?inPokeId:Dynamic, ?name:Dynamic, ?arg3:Dynamic):Dynamic
    {
        if (arg3 == null)
        {
            arg3 = "";
        }
        if (name == null)
        {
            name = "";
        }
        if (inPokeId == null)
        {
            inPokeId = "";
        }
        if (tradeId == null)
        {
            tradeId = "";
        }
        var selected = GetSelectPokemon();
        if (selected == null)
        {
            return null;
        }
        C56DE81E7.f80DA854C(tradeId, selected);
        RemoveSelectPokemon();
        if (tradeId == "" || inPokeId == "" || name == "")
        {
            return null;
        }
        IkScriptCommand.CommunicationExchangeDemo(selected, inPokeId, name, arg3);
        return null;
    }

    @:hashAbi("S5609B9C6E15B8800")
    public static function GiveToNpc(?tradeId:Dynamic):Dynamic
    {
        var selected = GetSelectPokemon();
        if (selected == null)
        {
            return null;
        }
        C56DE81E7.f80DA854C(tradeId, selected);
        RemoveSelectPokemon();
        return null;
    }
}
