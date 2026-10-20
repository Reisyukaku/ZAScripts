package main.event.ik;

@:keep
@:chunk("main")
@:hashAbi("C9BCD5A9B719388F9")
@:expose("C9BCD5A9B719388F9")
class RotomPhone
{
    @:abiSlot(1)
    public var m_obj:cppbindings.C016374C1;

    @:abiSlot(2)
    public var m_model:cppbindings.CECB91E31;

    @:abiSlot(3)
    public var m_anime:cppbindings.CE35B3EB3;

    @:abiSlot(4)
    public var m_animeParameter:cppbindings.CD958AA30;

    @:abiSlot(5)
    public var m_owner:cppbindings.C65853BD0;

    @:abiSlot(6)
    public var m_effectKey:String;

    @:abiSlot(7)
    public var m_charaCreCoroutine:CoroutineExecutor;

    public function new(?ownerName:Dynamic, ?objectTemplate:Dynamic)
    {
        this.m_charaCreCoroutine = null;
        this.m_effectKey = "";
        this.m_owner = null;
        this.m_animeParameter = null;
        this.m_anime = null;
        this.m_model = null;
        this.m_obj = null;
        var scene:Dynamic = cppbindings.C682D8E4F.fEF94D11D("event_script");
        this.m_obj = untyped (cast scene : Dynamic).f68159593((Std.string(ownerName) + "_rotom_phone"), objectTemplate);
        this.m_owner = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(ownerName);
        this.m_effectKey = ("rotom_phone_install_effect" + Std.string(ownerName));
    }

    @:hashAbi("F1C2AA00ADAC52EC5")
    public function Destroy():Void
    {
        {
            var _this:cppbindings.C016374C1 = this.m_obj;
            var withChildren:StdTypes.Bool = true;
            if ((withChildren == null)) withChildren = true;
            _this.fCDCB600D(withChildren);
        };
    }

    @:hashAbi("FF1C9BF636E0F4F06")
    public function IsSetup():Dynamic
    {
        return (this.m_obj.f9D8BC178() && this.m_obj.f48F8C7FF());
    }

    @:hashAbi("F795CBC2B12F8956D")
    public function OnSetup(?modelLabel:Dynamic, ?isAsyncCharaCreWait:Dynamic):Dynamic
    {
        var ownerSnapshot:main.event.ik.RotomPhone = this;
        var setup:() -> Dynamic = function():Dynamic {
            ownerSnapshot.m_anime = cppbindings.CE35B3EB3.fB41FD22F(ownerSnapshot.m_obj);
            while ((ownerSnapshot.m_anime == null)) {
                ti.Coroutine.yield();
                ownerSnapshot.m_anime = cppbindings.CE35B3EB3.fB41FD22F(ownerSnapshot.m_obj);
            };
            while (!ownerSnapshot.m_anime.f9D8BC178("")) {
                ti.Coroutine.yield();
            };
            ownerSnapshot.m_animeParameter = ownerSnapshot.m_anime.fF56461AF();
            ownerSnapshot.m_animeParameter.fD0036D06();
            if ((modelLabel != "")) {
                main.event.ik.command.IkScriptCommand.ChangeCharaCre(ownerSnapshot.m_obj, modelLabel);
            };
            ownerSnapshot.m_model = cppbindings.CECB91E31.fB41FD22F(ownerSnapshot.m_obj);
            ownerSnapshot.m_model.f6754453E(false);
            cppbindings.C56DE81E7.f2697A3DD(ownerSnapshot.m_model, 1, true);
            main.event.ik.command.IkScriptCommand.CreateLocaterEffect("field/rotom/notification/ef_notification01", ownerSnapshot.m_effectKey, ownerSnapshot.m_obj.fE9C29DA1(), ownerSnapshot.m_obj.f462C9B70().fE9C29DA1());
            return null;
        };
        if (lua.abi.Host.truthy(isAsyncCharaCreWait)) {
            this.m_charaCreCoroutine = new main.event.ik.CoroutineExecutor(setup);
        } else {
            setup();
        };
        return null;
    }

    @:hashAbi("F8E77DF4C460A5294")
    public function UpdateCharaCreWait():Dynamic
    {
        return m_charaCreCoroutine == null ? true : m_charaCreCoroutine.Update();
    }

    @:hashAbi("F9990DA0164F39996")
    public function IsFinishCharaCreWait():Dynamic
    {
        return m_charaCreCoroutine == null ? true : m_charaCreCoroutine.IsFinished();
    }

    @:hashAbi("FCCF850567AA03BC8")
    public function GetWaistTranslation():Dynamic
    {
        var joint:cppbindings.Vec3 = cppbindings.C56DE81E7.fEFA0C6A9((cast this.m_obj), "waist", "default");
        var x:StdTypes.Null<StdTypes.Float> = joint.x;
        if ((x == null)) {
            return null;
        };
        return ({
            var x:StdTypes.Float = joint.x;
            var y:StdTypes.Float = joint.y;
            var z:StdTypes.Float = joint.z;
            var vectorValues:lua.Table<Int, Float>;
            vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
            cast (cast vectorValues);
        });
    }

    @:hashAbi("F4F3C9624C0916AC3")
    public function AttachOwner():Dynamic
    {
        if (!this.IsSetup()) {
            return null;
        };
        if (this.IsAttached()) {
            this.m_obj.fE9C29DA1();
            return null;
        };
        this.m_obj.f4D31CD40(this.m_owner.fEBA8F794());
        return null;
    }

    @:hashAbi("FC045DC199F780F46")
    public function AttachOther(?newOwner:Dynamic):Dynamic
    {
        if (!this.IsSetup()) {
            return null;
        };
        if (this.IsAttached()) {
            this.m_obj.fE9C29DA1();
            return null;
        };
        this.m_obj.f4D31CD40(newOwner);
        return null;
    }

    @:hashAbi("FEE2F581BCF44FCD2")
    public function Detach():Dynamic
    {
        if (!this.IsSetup()) {
            return null;
        };
        if (!this.IsAttached()) {
            this.m_obj.fE9C29DA1();
            return null;
        };
        this.m_obj.f407CE2C1();
        return null;
    }

    @:hashAbi("F2E5CDB8288887785")
    public function IsAttached():Dynamic
    {
        return (this.IsSetup() && (this.m_obj.f5B268E4E() != null));
    }

    @:hashAbi("F05F47AAD4DCC9041")
    public function WarpWaist(?arg0:Dynamic):Dynamic
    {
        if (!lua.abi.Host.truthy(arg0)) {
            this.m_obj.f4D31CD40(this.m_owner.fEBA8F794());
        };
        var joint:lua.Table<Int, Float> = ({
            var _this:cppbindings.C65853BD0 = this.m_owner;
            {
                var v:cppbindings.Vec3 = _this.fD9C3CEF2("waist", "default");
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
        if (lua.abi.Host.truthy(arg0)) {
            {
                var _this:cppbindings.C016374C1 = this.m_obj;
                {
                    _this.f8F2B0552((cast joint)[1], (cast joint)[2], (cast joint)[3]);
                };
                joint;
            };
            {
                var _this:cppbindings.C016374C1 = this.m_obj;
                var rotation:cppbindings.CD5675BA5 = this.m_owner.f64857644();
                _this.f24032F87(rotation);
                rotation;
            };
        } else {
            var translation:lua.Table<Int, Float> = ({
                var _this:cppbindings.C65853BD0 = this.m_owner;
                {
                    var v:cppbindings.Vec3 = _this.f7360ED03();
                    {
                        var x:StdTypes.Float = v.x;
                        var y:StdTypes.Float = v.y;
                        var z:StdTypes.Float = v.z;
                        var vectorValues3:lua.Table<Int, Float>;
                        vectorValues3 = (lua.Table.create(([x, y, z] : Array<Float>)));
                        cast (cast vectorValues3);
                    };
                };
            });
            {
                var _this:cppbindings.C016374C1 = this.m_obj;
                var translation:lua.Table<Int, Float> = ((lua.Table.create(([((cast joint)[1] - (cast translation)[1]), ((cast joint)[2] - (cast translation)[2]), ((cast joint)[3] - (cast translation)[3])] : Array<Float>))));
                {
                    _this.f8F2B0552((cast translation)[1], (cast translation)[2], (cast translation)[3]);
                };
                translation;
            };
            {
                var _this:cppbindings.C016374C1 = this.m_obj;
                var rotation:cppbindings.CD5675BA5 = cppbindings.CD5675BA5.f0151A26E();
                _this.f24032F87(rotation);
                rotation;
            };
        };
        cppbindings.C56DE81E7.fA1A61077(this.m_obj.f462C9B70().fE9C29DA1(), this.m_obj.fE9C29DA1(), true);
        return null;
    }

    @:hashAbi("F607AF05C1F25AC48")
    public function WarpCharaWaistAtYawReverse():Dynamic
    {
        this.m_obj.f4D31CD40(this.m_owner.fEBA8F794());
        var joint:lua.Table<Int, Float> = ({
            var _this:cppbindings.C65853BD0 = this.m_owner;
            {
                var v:cppbindings.Vec3 = _this.fD9C3CEF2("waist", "default");
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
        var translation:lua.Table<Int, Float> = ({
            var _this:cppbindings.C65853BD0 = this.m_owner;
            {
                var v:cppbindings.Vec3 = _this.f7360ED03();
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues3:lua.Table<Int, Float>;
                    vectorValues3 = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues3);
                };
            };
        });
        {
            var _this:cppbindings.C016374C1 = this.m_obj;
            var translation:lua.Table<Int, Float> = ((lua.Table.create(([((cast joint)[1] - (cast translation)[1]), ((cast joint)[2] - (cast translation)[2]), ((cast joint)[3] - (cast translation)[3])] : Array<Float>))));
            {
                _this.f8F2B0552((cast translation)[1], (cast translation)[2], (cast translation)[3]);
            };
            translation;
        };
        var rotation:lua.Table<Int, Float> = ({
            var _this:cppbindings.CD5675BA5 = cppbindings.CD5675BA5.f0151A26E();
            {
                var v:cppbindings.Vec3 = _this.f643B5D6F();
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
        {
            var _this:cppbindings.C016374C1 = this.m_obj;
            var rotation:cppbindings.CD5675BA5 = cppbindings.CD5675BA5.fFA44D7AF(((cast rotation)[2] + lua.Math.pi), (cast rotation)[1], (cast rotation)[3]);
            _this.f24032F87(rotation);
            rotation;
        };
        cppbindings.C56DE81E7.fA1A61077(this.m_obj.f462C9B70().fE9C29DA1(), this.m_obj.fE9C29DA1(), true);
        return null;
    }

    @:hashAbi("F748A3DCD68216D1D")
    public function PlayAnime(?anime:Dynamic):Dynamic
    {
        var animations = [PlayCallStandTakeOutSequence, PlayCallSitTakeOutSequence, PlayCallPutAwaySequence, PlayInstallTakeOutSequence, PlayInstallSequence, PlayInstallPutAwaySequence, PlayEmissionWhite, PlayEmissionBlack, PlayAdvantStart, PlayAdvantEnd];
        animations[anime]();
        return null;
    }

    @:hashAbi("F9BCBCF03202C0135")
    public function WaitAnimeState(?anime:Dynamic):Dynamic
    {
        var stateNames:Array<String> = ["#0_def01_call01#_loop", "#0_def01_call02#_loop", "0_empty", "#0_defaultwait01#_loop", "#0_defaultwait01#_loop", "0_empty", "", "", "#0_once_action01#", "0_empty"];
        if ((stateNames[anime] == "")) {
            return null;
        };
        while ((this.m_anime.fA40BEAA2("default").fE9C29DA1() != stateNames[anime])) {
            this.m_anime.fA40BEAA2("default").fE9C29DA1();
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        return null;
    }

    @:hashAbi("FB495EFF75BD03DEB")
    public function PlayCallStandTakeOutSequence():Dynamic
    {
        this.m_model.f6754453E(true);
        this.WarpWaist(false);
        {
            var _this:cppbindings.CD958AA30 = this.m_animeParameter;
            _this.fE5760654("call_int", 1);
        };
        {
            var _this:cppbindings.CD958AA30 = this.m_animeParameter;
            _this.f27757F3E("call_bool", true);
        };
        return null;
    }

    @:hashAbi("F57C5160281E0445B")
    public function PlayCallSitTakeOutSequence():Dynamic
    {
        this.m_model.f6754453E(true);
        this.WarpWaist(true);
        {
            var _this:cppbindings.CD958AA30 = this.m_animeParameter;
            _this.fE5760654("call_int", 2);
        };
        {
            var _this:cppbindings.CD958AA30 = this.m_animeParameter;
            _this.f27757F3E("call_bool", true);
        };
        return null;
    }

    @:hashAbi("F5A9DC45BD5BB1A13")
    public function PlayCallPutAwaySequence():Dynamic
    {
        {
            var _this:cppbindings.CD958AA30 = this.m_animeParameter;
            _this.f27757F3E("call_bool", false);
        };
        return null;
    }

    @:hashAbi("F6F9EDB9EF617E082")
    public function PlayInstallTakeOutSequence():Dynamic
    {
        while (!lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.IsSetUpEffect(this.m_effectKey))) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        this.m_model.f6754453E(true);
        this.WarpWaist(false);
        {
            var _this:cppbindings.CD958AA30 = this.m_animeParameter;
            _this.fE5760654("wait_int", 1);
        };
        return null;
    }

    @:hashAbi("F84DC3FDCAEABB2FB")
    public function PlayInstallSequence():Dynamic
    {
        {
            var _this:cppbindings.CD958AA30 = this.m_animeParameter;
            _this.fFE05DDAD("instal_trigger", 1);
        };
        main.event.ik.command.IkScriptCommand.Wait_Time(0.16667);
        main.event.ik.command.IkScriptCommand.SetLocaterEffect(this.m_effectKey, "waist");
        main.event.ik.command.IkScriptCommand.PlayEffect(this.m_effectKey);
        return null;
    }

    @:hashAbi("F7D6C96F1E91935D4")
    public function PlayInstallPutAwaySequence():Dynamic
    {
        {
            var _this:cppbindings.CD958AA30 = this.m_animeParameter;
            _this.fE5760654("wait_int", 0);
        };
        return null;
    }

    @:hashAbi("F7E89FC0C092636E1")
    public function PlayEmissionWhite():Dynamic
    {
        {
            var _this:cppbindings.CD958AA30 = this.m_animeParameter;
            _this.fE5760654("emission01_int", 1);
        };
        return null;
    }

    @:hashAbi("F0ED210F1F67A52E7")
    public function PlayEmissionBlack():Dynamic
    {
        {
            var _this:cppbindings.CD958AA30 = this.m_animeParameter;
            _this.fE5760654("emission01_int", 0);
        };
        return null;
    }

    @:hashAbi("FDA0AAE52E889553B")
    public function PlayAdvantStart():Dynamic
    {
        this.m_model.f6754453E(true);
        this.WarpCharaWaistAtYawReverse();
        {
            var _this:cppbindings.CD958AA30 = this.m_animeParameter;
            _this.fE5760654("once_action_int", 1);
        };
        {
            var _this:cppbindings.CD958AA30 = this.m_animeParameter;
            _this.fFE05DDAD("once_action_trigger", 1);
        };
        return null;
    }

    @:hashAbi("F3C0415F0B983691E")
    public function PlayAdvantEnd():Dynamic
    {
        {
            var _this:cppbindings.CD958AA30 = this.m_animeParameter;
            _this.fFE05DDAD("once_action_trigger", 0);
        };
        return null;
    }
}
