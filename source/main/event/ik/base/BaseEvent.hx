package main.event.ik.base;

import main.event.ik.command.IkScriptCommand;
import cppbindings.C56DE81E7;
import cppbindings.Vector3Values as Vector3;

@:keep
@:chunk("main")
@:hashAbi("C2D501656BC102CA2")
@:expose("C2D501656BC102CA2")
class BaseEvent
{
    @:abiSlot(1)
    public var sub_corutin_map:Dynamic;

    @:abiSlot(2)
    public var Participants:Array<Dynamic>;

    @:abiSlot(3)
    public var m_resultParam:Dynamic;

    @:abiSlot(4)
    public var m_isResetMotionAtCommonEnd:Dynamic;

    @:abiSlot(5)
    public var slot5:Dynamic;

    @:abiSlot(6)
    public var m_eventScriptParam:Dynamic;

    @:abiSlot(7)
    public var slot7:Dynamic;

    public function new()
    {
        slot7 = false;
        slot5 = true;
        m_isResetMotionAtCommonEnd = true;
        m_resultParam = -1;
        Participants = [];
        sub_corutin_map = new haxe.ds.StringMap<ti.Coroutine>();
    }

    @:hashAbi("F9D5677973CCA2F41")
    public function IsSkipCommonCreateAndEnd():Bool
    {
        return false;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public function mainBody():Void
    {
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public function OnCreate():Dynamic
    {
        return null;
    }

    @:hashAbi("FB5AFEE8CF355B993")
    public function OnCreateMainScenario():Dynamic
    {
        return null;
    }

    @:hashAbi("F3250254222F75035")
    public function OnEnd():Dynamic
    {
        return false;
    }

    @:hashAbi("F7198FC1A51594367")
    public function OnPostEnd():Dynamic
    {
        return null;
    }

    @:hashAbi("F9B3EF6CCB56B42E7")
    public function OnSkip():Dynamic
    {
        return null;
    }

    @:hashAbi("FF453F73E231FC880")
    public function CommonCreate():Dynamic
    {
        var ownerSnapshot:main.event.ik.base.BaseEvent = this;
        main.event.ik.command.IkScriptCommand.RequestPauseEventDisable();
        if (this.IsSkipCommonCreateAndEnd()) {
            cppbindings.C56DE81E7.f79C4BC33(false);
            return null;
        };
        main.event.ik.command.IkScriptCommand.WordSet_Name_Player(0, true);
        main.event.ik.command.IkScriptCommand.WordSet_Name_Player(0, false);
        main.event.ik.command.IkScriptCommand.WordSet_Name_Rival(1, true);
        main.event.ik.command.IkScriptCommand.WordSet_Name_Rival(1, false);
        this.OnCreateMainScenario();
        this.OnCreate();
        {
            var arrayIndex:StdTypes.Int = 0;
            var arrayValues:Array<Dynamic> = this.Participants;
            while ((arrayIndex < arrayValues.length)) {
                var participant:Dynamic = arrayValues[arrayIndex];
                ++arrayIndex;
                main.event.ik.command.IkScriptCommand.SB70BF7116F3080EE(participant);
            };
        };
        var interactionTarget:String = "";
        var coordinates:cppbindings.Vec3 = cppbindings.C56DE81E7.f96130B28(untyped (cast this.m_eventScriptParam : Dynamic).f5DDDCE3E());
        var x:StdTypes.Null<StdTypes.Float> = coordinates.x;
        var initialPosition:lua.Table<Int, Float> = (if ((x == null)) {
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
        if (((initialPosition == null) && (untyped (cast this.m_eventScriptParam : Dynamic).f5DDDCE3E() == "BOOT_CONDITION_TALK_NPC"))) {
            if (lua.abi.Host.truthy(cppbindings.C56DE81E7.f7AC0A442("BOOT_CONDITION_TALK_NPC"))) {
                interactionTarget = main.event.ik.command.IkScriptCommand.GetLastInteractObjectName("BOOT_CONDITION_TALK_NPC");
                Lambda.exists(["SimpleTalkEvent", "PokemonCenterEvent"], function(eventId:String):StdTypes.Bool {
                    return (eventId == untyped (cast ownerSnapshot.m_eventScriptParam : Dynamic).f2F838001());
                });
                if (((cppbindings.C56DE81E7.f4C7B9250(interactionTarget) && (interactionTarget != "")) && lua.abi.Host.truthy(cppbindings.C56DE81E7.fBA22EECD))) {
                    if (!Lambda.exists(this.Participants, function(participant:String):StdTypes.Bool {
                        return (interactionTarget == participant);
                    })) {
                        main.event.ik.command.IkScriptCommand.S1CF5627159EB1274(interactionTarget, "Player");
                    };
                };
            };
        };
        {
            var arrayIndex2:StdTypes.Int = 0;
            var arrayValues2:Array<Dynamic> = this.Participants;
            while ((arrayIndex2 < arrayValues2.length)) {
                var participant:Dynamic = arrayValues2[arrayIndex2];
                ++arrayIndex2;
                var elapsed:StdTypes.Float = 0.0;
                while ((cppbindings.C56DE81E7.f4C7B9250(participant) && !cppbindings.C56DE81E7.fBA22EECD(participant))) {
                    elapsed += this.Suspend();
                    if ((elapsed >= 10.0)) {
                        cppbindings.C56DE81E7.fC312554A();
                        break;
                    };
                };
                if ((cppbindings.C56DE81E7.f4C7B9250(participant) && cppbindings.C56DE81E7.fBA22EECD(participant))) {
                    main.event.ik.command.IkScriptCommand.SetAlwaysFrequency(participant);
                    if ((interactionTarget == participant)) {
                        main.event.ik.command.IkScriptCommand.S1CF5627159EB1274(participant, "Player");
                    };
                };
            };
        };
        main.event.ik.command.IkScriptCommand.SetAlwaysFrequency("Player");
        if ((interactionTarget != "")) {
            if ((cppbindings.C56DE81E7.f4C7B9250(interactionTarget) && cppbindings.C56DE81E7.fBA22EECD(interactionTarget))) {
                main.event.ik.command.IkScriptCommand.S1CF5627159EB1274("Player", interactionTarget);
            };
        } else {
            if ((initialPosition != null)) {
                main.event.ik.command.IkScriptCommand.S750E4F543AC2EEDE(initialPosition);
            };
        };
        cppbindings.C56DE81E7.f79C4BC33(false);
        this.WaitApplyAlwaysUpdate("Player");
        {
            var arrayIndex3:StdTypes.Int = 0;
            var arrayValues3:Array<Dynamic> = this.Participants;
            while ((arrayIndex3 < arrayValues3.length)) {
                var participant:Dynamic = arrayValues3[arrayIndex3];
                ++arrayIndex3;
                this.WaitApplyAlwaysUpdate(participant);
            };
        };
        var immediatePlacement:Dynamic = cppbindings.C56DE81E7.fAE630B01();
        var resetPlayer:Dynamic = cppbindings.C56DE81E7.f771C0933(untyped (cast this.m_eventScriptParam : Dynamic).f2F838001());
        if ((lua.abi.Host.truthy(resetPlayer) || lua.abi.Host.truthy(immediatePlacement))) {
            if (!lua.abi.Host.truthy(immediatePlacement)) {
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 495));
            };
            var placePlayer:Dynamic = cppbindings.C56DE81E7.f219A996E(untyped (cast this.m_eventScriptParam : Dynamic).f2F838001());
            if ((lua.abi.Host.truthy(placePlayer) || lua.abi.Host.truthy(immediatePlacement))) {
                var remaining:StdTypes.Float = (if (lua.abi.Host.truthy(immediatePlacement)) {
                    0.0;
                } else {
                    2.0;
                });
                while (!lua.abi.Host.truthy(cppbindings.C56DE81E7.f69C5D22A())) {
                    remaining -= main.event.ik.command.IkScriptCommand.Suspend();
                    if ((remaining <= 0.0)) {
                        var position:lua.Table<Int, Float> = main.event.ik.command.IkScriptCommand.FObj_Get_Pos("Player");
                        var angle:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Get_Angle("Player");
                        var destination:lua.Table<Int, Float> = position;
                        if (!lua.abi.Host.truthy(immediatePlacement)) {
                            var hit:lua.Table<Int, Float> = main.event.ik.command.IkScriptCommand.TryGetHitRayPos(((lua.Table.create(([(cast position)[1], ((cast position)[2] + 1.5), (cast position)[3]] : Array<Float>)))), ((lua.Table.create(([(cast position)[1], ((cast position)[2] - 3.0), (cast position)[3]] : Array<Float>)))));
                            if ((hit != null)) {
                                destination = hit;
                            };
                        };
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang_with_Reset("Player", (cast destination)[1], (cast destination)[2], (cast destination)[3], angle));
                        break;
                    };
                };
            };
        };
        main.event.ik.command.IkScriptCommand.S50344259181D5CD3();
        return null;
    }

    @:hashAbi("F4B786609451597D5")
    public function CommonUpdate():Dynamic
    {
        main.event.ik.command.IkScriptCommand.Update();
        return null;
    }

    @:hashAbi("F1E18057CD87CD6E9")
    public function CommonEnd():Dynamic
    {
        if (lua.abi.Host.truthy(OnEnd()))
        {
            main.event.ik.command.IkScriptCommand.Suspend();
        }
        ResetMotion();
        main.event.ik.command.IkScriptCommand.SetPlayADemo(false);
        main.event.ik.command.IkScriptCommand.End(slot5);
        OnPostEnd();
        main.event.ik.command.IkScriptCommand.SC818B7D84F7486E2(true);
        return null;
    }

    @:hashAbi("FF8DC7B39BB0457F0")
    public function WaitApplyAlwaysUpdate(?name:Dynamic):Dynamic
    {
        if ((!cppbindings.C56DE81E7.f4C7B9250(name) || !cppbindings.C56DE81E7.fBA22EECD(name))) {
            return null;
        };
        if ((main.event.ik.command.IkScriptCommand.IsUpdateRequested(name) == null)) {
            return null;
        };
        var previousRequest:Dynamic = false;
        var currentRequest:Dynamic = false;
        while ((!lua.abi.Host.truthy(currentRequest) || !lua.abi.Host.truthy(previousRequest))) {
            previousRequest = currentRequest;
            currentRequest = main.event.ik.command.IkScriptCommand.IsUpdateRequested(name);
            this.Suspend();
        };
        return null;
    }

    @:hashAbi("F54B849D525D20122")
    public function ResetMotion():Dynamic
    {
        if (!lua.abi.Host.truthy(cppbindings.C56DE81E7.f69C5D22A()))
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Base("Player"));
        }
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Force("Player", 496);
        if (!lua.abi.Host.truthy(m_isResetMotionAtCommonEnd) || IsSkipCommonCreateAndEnd())
        {
            return null;
        }
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
        var characters:Array<Dynamic> = main.event.ik.command.IkScriptCommand.ChrAccessorForEventHandles;
        for (character in characters)
        {
            var name:String = character.fE9C29DA1();
            if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.IsCleanupTargetAtEndBaseEvent(name)))
            {
                main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(name);
                character.f3417EB8F();
            }
        }
        return null;
    }

    @:hashAbi("F12F63EE47FFCB183")
    public function Suspend():Dynamic
    {
        ti.Coroutine.yield();
        return main.event.ik.EventScriptManager.DeltaTime;
    }

    @:hashAbi("F32FAD7D4DF3ACA95")
    public function TimeWait(?second:Dynamic):Dynamic
    {
        main.event.ik.command.IkScriptCommand.Wait_Time(second);
        return null;
    }

    @:hashAbi("F903489488FB9BA8D")
    public function Await(?func:Dynamic, ?timeOut:Dynamic):Void
    {
        if (timeOut == null)
        {
            timeOut = 30.0;
        }
        var elapsed = 0.0;
        while (!lua.abi.Host.truthy(func()) && timeOut >= elapsed)
        {
            elapsed += main.event.ik.EventScriptManager.DeltaTime;
            Suspend();
        }
    }

    @:hashAbi("F708AE6A1208C2E79")
    public function Await_no_timeout(?func:Dynamic):Dynamic
    {
        while (!lua.abi.Host.truthy(func()))
        {
            Suspend();
        }
        return null;
    }

    @:hashAbi("F3FEEFB06B65D4728")
    public function PlayDemo(?path:Dynamic, ?can_skip:Dynamic):Dynamic
    {
        if ((can_skip == null)) {
            can_skip = true;
        };
        main.event.ik.command.IkScriptCommand.DisableAutoSleepMode();
        main.event.ik.command.IkScriptCommand.SetPlayADemo(true);
        cppbindings.C05D9A855.f635E7B9C(path, "startup", can_skip);
        this.Await_no_timeout(cppbindings.C05D9A855.f08FA26F1);
        cppbindings.C05D9A855.f40B8C6B1();
        this.Await_no_timeout(cppbindings.C05D9A855.f59D006EE);
        cppbindings.C05D9A855.fB051DFDA();
        main.event.ik.command.IkScriptCommand.SetPlayADemo(false);
        main.event.ik.command.IkScriptCommand.EnableAutoSleepMode();
        return null;
    }

    @:hashAbi("F5A7EA3E57CD033A9")
    public function CreateSubCorutin(?key:Dynamic, ?func:Dynamic):Dynamic
    {
        var coroutines:haxe.ds.StringMap<ti.Coroutine> = this.sub_corutin_map;
        if (coroutines.exists(key))
        {
            return null;
        }
        var coroutine = new ti.Coroutine(function():Dynamic
        {
            untyped func();
            return null;
        }, "CreateSubCorutin_" + Std.string(key));
        coroutines.set(key, coroutine);
        return coroutines.get(key);
    }

    @:hashAbi("FDD9CF70D4990B429")
    public function RemoveSubCorutin(?key:Dynamic):Dynamic
    {
        var coroutines:haxe.ds.StringMap<ti.Coroutine> = sub_corutin_map;
        if (coroutines.exists(key))
        {
            coroutines.remove(key);
        }
        return null;
    }

    @:hashAbi("F839040131B06F57C")
    public function UpdateSubCorutin(?context:Dynamic):Dynamic
    {
        var coroutines:haxe.ds.StringMap<ti.Coroutine> = sub_corutin_map;
        for (coroutine in coroutines)
        {
            if (coroutine != null && lua.Coroutine.status(coroutine.m_coroutine) != Dead)
            {
                var resume:lua.Coroutine.CoroutineResume<Dynamic> = lua.Coroutine.resume(coroutine.m_coroutine, context);
                if (!resume.success)
                {
                    throw new haxe.Exception("!Error ocurred in coroutine[" + Std.string(coroutine.Name) + "]: " + Std.string(resume.result));
                }
            }
        }
        return null;
    }

    @:hashAbi("F883ECEEAC5E9B5E1")
    public function AllSubCorutinClear():Dynamic
    {
        var coroutines:haxe.ds.StringMap<ti.Coroutine> = sub_corutin_map;
        coroutines.clear();
        return null;
    }

    @:hashAbi("FC26EE7EFCD8F5942")
    public function test_MotionLoop(?key:Dynamic, ?arr:Dynamic, ?time_out_secound:Dynamic):Dynamic
    {
        if (time_out_secound == null)
        {
            time_out_secound = -1;
        }
        var motions:Array<Dynamic> = arr;
        CreateSubCorutin(key, function():Dynamic
        {
            while (true)
            {
                for (motion in motions)
                {
                    TimeWait(motion.time_out);
                }
            }
            return null;
        });
        if (time_out_secound > -1)
        {
            TimeWait(time_out_secound);
            RemoveSubCorutin(key);
        }
        return null;
    }

    @:hashAbi("F2C08B3718BC65B49")
    public function LogInfo(?s:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("F0DA3AEF0C3C42403")
    public function LogWarning(?s:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("FA754F9CFA5FCF7B5")
    public function LogError(?s:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("FC5E16305A57EBE9F")
    public function SetEventScriptParam(?paramData:Dynamic):Dynamic
    {
        this.m_eventScriptParam = paramData;
        return null;
    }

    @:hashAbi("F092ACF6F9CAC2BA2")
    public function LoadTextResource():Dynamic
    {
        this.slot7 = false;
        var resourceName:String = cppbindings.C56DE81E7.f712D6A19(untyped (cast this.m_eventScriptParam : Dynamic).f2F838001());
        if ((resourceName == "")) {
            return null;
        };
        var resourcePath:String = ("script/" + resourceName);
        this.slot7 = main.event.ik.command.IkScriptCommand.S3DA3C2734573239A(resourceName);
        if (lua.abi.Host.truthy(this.slot7)) {
            resourceName = main.event.ik.command.IkScriptCommand.SEC6DDCC62CD7FDE5(resourceName);
            resourcePath = ("sk/" + resourceName);
        };
        var resource:String = main.event.ik.command.TextResourceManager.GetTextResourcePath(resourcePath);
        main.event.ik.command.TextResourceManager.LoadTextResource(resource);
        this.Await(function():Dynamic {
            return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(resource);
        });
        main.event.ik.command.IkScriptCommand.SetTextResourceFileName(resourceName);
        return null;
    }

    @:hashAbi("F34645180A2F21B29")
    public function UnloadTextResource():Dynamic
    {
        var resourceName:String = main.event.ik.command.IkScriptCommand.GetTextResourceFileName();
        if (resourceName == "")
        {
            return null;
        }
        var resourcePath = (lua.abi.Host.truthy(slot7) ? "sk/" : "script/") + resourceName;
        main.event.ik.command.TextResourceManager.UnloadTextResource(main.event.ik.command.TextResourceManager.GetTextResourcePath(resourcePath));
        main.event.ik.command.IkScriptCommand.ClearTextResourceFileName();
        slot7 = false;
        return null;
    }

    @:hashAbi("F855CC3B4B0BC5CAF")
    public function GetResultParam():Dynamic
    {
        return m_resultParam;
    }

    @:hashAbi("FFD4893292445EDEF")
    public function Get_InitSelectPokemon(?_idx:Dynamic):Dynamic
    {
        var selection = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_INITIAL_SELECT_POKEMON");
        var pokemon = switch (selection)
        {
            case 1: [498, 152, 158];
            case 2: [158, 152, 498];
            default: [152, 158, 498];
        };
        if (_idx < 0 || _idx > 3)
        {
            _idx = 0;
        }
        return pokemon[_idx];
    }
}
