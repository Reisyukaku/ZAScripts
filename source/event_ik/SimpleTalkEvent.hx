package event_ik;

import main.event.ik.base.BaseEvent;
import main.event.ik.command.IkScriptCommand;
import main.event.ik.command.CharacterCommand;
import main.event.ik.command.TextResourceManager;
import cppbindings.Vector3Values as Vector3;
import cppbindings.CD5675BA5 as Quaternion;
import cppbindings.C2FE46DCA as BaseChrAccessor;
import cppbindings.C56DE81E7;
import cppbindings.C7A95F059;
import cppbindings.CBA58795C;
import cppbindings.CBA58795C as EventMessageWindow;
import cppbindings.C436B49F9 as UserDataSaveDataAccessor;

@:keep
@:chunk("event_ik")
@:hashAbi("CD2D1D56FDE778B02")
@:expose("CD2D1D56FDE778B02")
class SimpleTalkEvent extends BaseEvent
{
    @:abiSlot(8)
    public var slot8:String;

    @:abiSlot(9)
    public var slot9:String;

    public function new()
    {
        slot9 = "RemoveTagSimpleTalkLipSync";
        slot8 = "SimpleTalkLipSync";
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var ownerSnapshot:event_ik.SimpleTalkEvent = this;
        main.event.ik.command.IkScriptCommand.S3D047DB5B440735C();
        var leadPokemon:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.GetPlayerPartyUnitParam(0, false);
        if ((leadPokemon != null)) {
            main.event.ik.command.IkScriptCommand.SF0F9842ECEA3C1A4(2, leadPokemon);
        };
        var pokemonTag:String = "SimpleTalkPokemon";
        this.m_isResetMotionAtCommonEnd = false;
        var targetName:String = untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC();
        if ((targetName == "")) {
            targetName = cppbindings.C7A95F059.fD27E683E();
        };
        var targetAccessor:StdTypes.Null<Dynamic> = main.event.ik.command.CharacterCommand.GetAccessorNoScenario(targetName);
        main.event.ik.command.IkScriptCommand.SetAlwaysFrequencyByHdl(targetAccessor);
        var noTarget:StdTypes.Bool = ((targetName == "none") || (targetName == "None"));
        if ((!noTarget && (targetAccessor != null))) {
            if (untyped (cast targetAccessor : Dynamic).f3417EB8F()) {
                main.event.ik.command.IkScriptCommand.AddTagCommon(targetName, pokemonTag);
            } else {
                main.event.ik.command.IkScriptCommand.S721A369871039AEA(targetName);
            };
        };
        var useLipSync:StdTypes.Bool = ((!noTarget && (targetAccessor != null)) && !untyped (cast targetAccessor : Dynamic).f3417EB8F());
        var validParameters:StdTypes.Bool = true;
        if ((untyped (cast this.m_eventScriptParam : Dynamic).fBF448F72() != "")) {
            validParameters = ((untyped (cast this.m_eventScriptParam : Dynamic).fB581866B() != "") && (untyped (cast this.m_eventScriptParam : Dynamic).f792B86F5() != ""));
        };
        if (validParameters) {
            var explicitText:StdTypes.Bool = (untyped (cast this.m_eventScriptParam : Dynamic).fBF448F72() != "");
            var textFile:String = (if (explicitText) {
                untyped (cast this.m_eventScriptParam : Dynamic).fBF448F72();
            } else {
                cppbindings.C7A95F059.f06262935(targetName);
            });
            if ((textFile == "")) {
                return;
            };
            var prefix:String = "script/";
            if (main.event.ik.command.IkScriptCommand.S3DA3C2734573239A(textFile)) {
                textFile = main.event.ik.command.IkScriptCommand.SEC6DDCC62CD7FDE5(textFile);
                prefix = "sk/";
            };
            var resource:String = main.event.ik.command.TextResourceManager.GetTextResourcePath((prefix + textFile));
            var loadOwned:StdTypes.Bool = !main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(resource);
            if (loadOwned) {
                main.event.ik.command.TextResourceManager.LoadTextResource(resource);
            };
            var rotating:StdTypes.Bool = false;
            var messageCount:StdTypes.Int = (if (explicitText) {
                1;
            } else {
                cppbindings.C7A95F059.fD1379D47(targetName);
            });
            var player:Dynamic = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent("Player");
            var squatAction:Dynamic = null;
            var turnAction:Dynamic = null;
            var wasSquatting:StdTypes.Bool = untyped (cast player : Dynamic).f06C4142A("Squat");
            this.CreateSubCorutin("UpdateAnime_0", function():StdTypes.Void {
                if (((targetAccessor != null) && untyped (cast targetAccessor : Dynamic).f3491A2B7())) {
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", targetName, "head", false);
                };
                if (noTarget) {
                    return;
                };
                var coordinates:cppbindings.Vec3 = cppbindings.C56DE81E7.fAFFCA1B3(targetName);
                var x:StdTypes.Null<StdTypes.Float> = coordinates.x;
                var targetPosition:lua.Table<Int, Float> = (if ((x == null)) {
                    null;
                } else {
                    {
                        var x:StdTypes.Float = coordinates.x;
                        var y:StdTypes.Float = coordinates.y;
                        var z:StdTypes.Float = coordinates.z;
                        var vectorValues:lua.Table<Int, Float>;
                        vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                        cast (cast vectorValues);
                    };
                });
                if (cppbindings.C7A95F059.f9149BE6E(targetName)) {
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 495));
                    if ((targetPosition != null)) {
                        turnAction = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Pos("Player", targetPosition);
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnAction);
                    };
                } else {
                    if ((((!cppbindings.C7A95F059.f3DBB7A8E(targetName) || untyped (cast player : Dynamic).f06C4142A("Ob0003_00_bag_player")) || cppbindings.C56DE81E7.f88DB1D71(targetName)) || ownerSnapshot.F80EB99017A03ED1A(targetName))) {
                        return;
                    };
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 495));
                    var elapsed:StdTypes.Float = 0.0;
                    while (!cppbindings.C56DE81E7.f69C5D22A()) {
                        elapsed += ownerSnapshot.Suspend();
                        if ((elapsed > 1.0)) {
                            return;
                        };
                    };
                    var playerAccessor:cppbindings.C2FE46DCA = player;
                    var playerPosition:lua.Table<Int, Float> = ({
                        var v:cppbindings.Vec3 = playerAccessor.f7360ED03();
                        {
                            var x:StdTypes.Float = v.x;
                            var y:StdTypes.Float = v.y;
                            var z:StdTypes.Float = v.z;
                            var vectorValues3:lua.Table<Int, Float>;
                            vectorValues3 = (lua.Table.create(([x, y, z] : Array<Float>)));
                            cast (cast vectorValues3);
                        };
                    });
                    var targetAngles:lua.Table<Int, Float> = ({
                        var _this:cppbindings.CD5675BA5 = ({
                            var from:StdTypes.Null<lua.Table<Int, Float>> = playerPosition;
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
                                cppbindings.CD5675BA5.fB5706664((cast targetPosition)[1], (cast targetPosition)[2], (cast targetPosition)[3], (cast from)[1], (cast from)[2], (cast from)[3], (cast up)[1], (cast up)[2], (cast up)[3]);
                            };
                        });
                        {
                            var v:cppbindings.Vec3 = _this.f643B5D6F();
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
                    var targetYaw:StdTypes.Float = (cast targetAngles)[2];
                    squatAction = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 141);
                    rotating = true;
                    var initialAngles:lua.Table<Int, Float> = ({
                        var _this:cppbindings.CD5675BA5 = playerAccessor.fEBA8F794().f16155D9E();
                        {
                            var v:cppbindings.Vec3 = _this.f643B5D6F();
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
                    var initialPitch:StdTypes.Float = (cast initialAngles)[1];
                    var initialYaw:StdTypes.Float = (cast initialAngles)[2];
                    var initialRoll:StdTypes.Float = (cast initialAngles)[3];
                    elapsed = 0;
                    var first:StdTypes.Bool = true;
                    while (((elapsed <= 0.3) || first)) {
                        first = false;
                        var angle:StdTypes.Float = ownerSnapshot.F1C7588256778C880(((initialYaw / (2 * lua.Math.pi)) * 360.0), ((targetYaw / (2 * lua.Math.pi)) * 360.0), Math.min(1, (elapsed / 0.3)));
                        {
                            var _this:StdTypes.Null<cppbindings.C016374C1> = playerAccessor.fEBA8F794();
                            var rotation:cppbindings.CD5675BA5 = cppbindings.CD5675BA5.fFA44D7AF((((angle / 360.0) * 2) * lua.Math.pi), initialPitch, initialRoll);
                            _this.f24032F87(rotation);
                            rotation;
                        };
                        elapsed += ownerSnapshot.Suspend();
                    };
                    rotating = false;
                };
            });
            {
                var arrayIndex:StdTypes.Int = 0;
                var arrayIndex2:StdTypes.Int = messageCount;
                while ((arrayIndex < arrayIndex2)) {
                    var index:StdTypes.Int = arrayIndex++;
                    if (loadOwned) {
                        this.Await(function():StdTypes.Bool {
                            return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(resource);
                        });
                    };
                    if (explicitText) {
                        var label:String = untyped (cast this.m_eventScriptParam : Dynamic).fB581866B();
                        var windowType:StdTypes.Null<StdTypes.Int> = Std.parseInt(untyped (cast this.m_eventScriptParam : Dynamic).f792B86F5());
                        if (useLipSync) {
                            main.event.ik.command.IkScriptCommand.AddTagCommon(targetName, this.slot8);
                        };
                        cppbindings.C7A95F059.f7263B8CC(textFile, this.F48A7B4F2EFE1FFD7(textFile, label), targetName, windowType);
                        if (useLipSync) {
                            this.F1E8047C2B6ED610E(targetName);
                        } else {
                            while ((cppbindings.CBA58795C.fBFFD6BA4() == false)) {
                                this.Suspend();
                            };
                        };
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    } else {
                        var entry:StdTypes.Null<{ public var fDFE2ACE6(default, null) : Dynamic; public var fB11D673C(default, null) : Dynamic; public var f9C0468C3(default, null) : Dynamic; public var f073BB494(default, null) : Dynamic; public var f0443284E(default, null) : () -> String; }> = cppbindings.C7A95F059.f470357B4(targetName, index);
                        if ((entry != null)) {
                            var label:String = this.F48A7B4F2EFE1FFD7(entry.fB11D673C(), entry.f0443284E());
                            entry.f9C0468C3(label);
                            if (useLipSync) {
                                main.event.ik.command.IkScriptCommand.AddTagCommon(targetName, this.slot8);
                            };
                            cppbindings.C7A95F059.f0564885A(entry);
                            if (useLipSync) {
                                this.F1E8047C2B6ED610E(targetName);
                            } else {
                                while ((cppbindings.CBA58795C.fBFFD6BA4() == false)) {
                                    this.Suspend();
                                };
                            };
                            if ((index < (messageCount - 1))) {
                                var nextEntry:StdTypes.Null<{ public var fDFE2ACE6(default, null) : Dynamic; public var f073BB494(default, null) : Dynamic; }> = cppbindings.C7A95F059.f470357B4(targetName, (index + 1));
                                if ((nextEntry != null)) {
                                    if (((entry.f073BB494() == nextEntry.f073BB494()) && (entry.fDFE2ACE6() == nextEntry.fDFE2ACE6()))) {
                                        continue;
                                    };
                                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                                };
                            };
                        };
                    };
                };
            };
            while (rotating) {
                main.event.ik.command.IkScriptCommand.Suspend();
            };
            this.AllSubCorutinClear();
            cppbindings.CBA58795C.fB196C898();
            if (loadOwned) {
                main.event.ik.command.TextResourceManager.UnloadTextResource(resource);
            };
            if (!wasSquatting) {
                if ((squatAction != null)) {
                    this.WaitAction(squatAction);
                    squatAction = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 142);
                    this.WaitAction(squatAction);
                } else {
                    if ((turnAction != null)) {
                        this.WaitAction(turnAction);
                    };
                };
            };
        };
        if (!noTarget) {
            main.event.ik.command.IkScriptCommand.RemoveTagCommon(targetName, pokemonTag);
        };
    }

    public function F80EB99017A03ED1A(npcDataKey:String):Bool
    {
        return npcDataKey == "npc_main_ga_leader";
    }

    @:hashAbi("FAFE8F5494D85D0FA")
    public function WaitAction(action:Dynamic, timeout:Float = 10.0):Dynamic
    {
        var elapsed = 0.0;
        while (action.fFFAA5D50() == false)
        {
            elapsed += IkScriptCommand.Suspend();
            if (timeout <= elapsed)
            {
                break;
            }
        }
        return null;
    }

    public function F1E8047C2B6ED610E(characterName:String):Dynamic
    {
        var ownerSnapshot:event_ik.SimpleTalkEvent = this;
        var lipSyncStopped:StdTypes.Bool = false;
        var stopLipSync:() -> StdTypes.Void = function():StdTypes.Void {
            if (!lipSyncStopped) {
                main.event.ik.command.IkScriptCommand.AddTagCommon(characterName, ownerSnapshot.slot9);
                lipSyncStopped = true;
            };
        };
        var elapsed:StdTypes.Float = 0.0;
        var waitingForInput:StdTypes.Bool = false;
        while ((cppbindings.CBA58795C.fBFFD6BA4() == false)) {
            elapsed += this.Suspend();
            if (!cppbindings.CBA58795C.f911EF4BA()) {
                waitingForInput = true;
                if ((elapsed >= main.event.ik.command.IkScriptCommand.kLipSyncSeconds)) {
                    stopLipSync();
                };
            } else {
                if ((elapsed > 0)) {
                    if (lipSyncStopped) {
                        if ((characterName != null)) {
                            main.event.ik.command.IkScriptCommand.AddTagCommon(characterName, this.slot8);
                        };
                        lipSyncStopped = false;
                    };
                    if (waitingForInput) {
                        elapsed = 0;
                        waitingForInput = false;
                    };
                };
            };
        };
        stopLipSync();
        return null;
    }

    public function F1C7588256778C880(startAngle:Float, targetAngle:Float, progress:Float):Float
    {
        var difference = (targetAngle + 180) - (startAngle + 180);
        if (difference > 180.0)
        {
            difference -= 360.0;
        }
        else if (difference < -180.0)
        {
            difference += 360.0;
        }
        return startAngle + difference * progress;
    }

    public function F48A7B4F2EFE1FFD7(textResource:Dynamic, label:String):String
    {
        var selectedLabel:String = label;
        if (!main.event.ik.command.IkScriptCommand.IsLabelTextExist(textResource, label)) {
            selectedLabel = (Std.string(label) + (if (({
                var a:UInt = cppbindings.C436B49F9.f4530466C();
                (cast a) == 0;
            })) {
                "_m";
            } else {
                "_f";
            }));
            main.event.ik.command.IkScriptCommand.IsLabelTextExist(textResource, selectedLabel);
        };
        return selectedLabel;
    }
}
