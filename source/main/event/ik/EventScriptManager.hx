package main.event.ik;

import ext.pe.SceneObjectBehavior;
import main.event.ik.base.BaseEvent;
import cppbindings.C56DE81E7;

@:keep
@:chunk("main")
@:hashAbi("CD28754E340F63A6C")
@:expose("CD28754E340F63A6C")
class EventScriptManager extends SceneObjectBehavior
{
    @:hashAbi("SED8BC9B256D4F784")
    public static var ScriptPckageName:Dynamic = "event_ik";

    @:hashAbi("S27E43BC844883986")
    public static var S27E43BC844883986:Dynamic = false;

    @:hashAbi("S44460EB93267F798")
    public static var DeltaTime:Dynamic = 0;

    @:hashAbi("S51C08C42EA34642F")
    public static var m_thisScene:cppbindings.CA042DA13;

    @:hashAbi("S8C8D8B0BE6DF60CF")
    public static var m_eventCoroutine:ti.Coroutine;

    @:hashAbi("S808C99201023B891")
    public static var S808C99201023B891:main.event.ik.ResidentData;

    @:hashAbi("S734B18C7AD04488C")
    public static var m_nowPlayingScript:BaseEvent;

    public function new(?obj:Dynamic)
    {
        super(obj);
    }

    @:hashAbi("SD5F1AEA3B340F3EF")
    public static function CFunc_CallEvent(?eventScriptParam:Dynamic):Dynamic
    {
        untyped (cast eventScriptParam : Dynamic).f2F838001();
        var result:Dynamic = -1;
        main.event.ik.EventScriptManager.m_eventCoroutine = new ti.Coroutine(function():Dynamic {
            while (!cppbindings.C9F1CEEC0.fB51E7F78(main.event.ik.EventScriptManager.ScriptPckageName)) {
                ti.Coroutine.yield();
            };
            result = main.event.ik.EventScriptManager.ExecuteScript(main.auto_generated.event.EventScriptFactory.Create(untyped (cast eventScriptParam : Dynamic).f2F838001()), eventScriptParam);
            cppbindings.C69E5A33D.fD663D9F8((if ((result == null)) {
                -1;
            } else {
                result;
            }));
            main.event.ik.EventScriptManager.m_nowPlayingScript = null;
            main.event.ik.command.IkScriptCommand.RemoveAllTagEffect();
            main.event.ik.command.IkScriptCommand.CheckAutoSleepMode();
            untyped (cast eventScriptParam : Dynamic).f2F838001();
            return null;
        }, ("CFunc_CallEvent -> " + Std.string(untyped (cast eventScriptParam : Dynamic).f2F838001())));
        return null;
    }

    @:hashAbi("S59B9C6B199FDE601")
    public static function GetParticipants():Dynamic
    {
        var names = "Player";
        if (m_nowPlayingScript != null)
        {
            for (participant in m_nowPlayingScript.Participants)
            {
                names += "," + Std.string(participant);
            }
        }
        var created:Array<Dynamic> = main.event.ik.command.IkScriptCommand.CreateChrAccessorForEventHandles;
        for (accessor in created)
        {
            names += "," + Std.string(accessor.fE9C29DA1());
        }
        return names;
    }

    public static function S6C40518434D6A62D():Dynamic
    {
        if (lua.abi.Host.truthy(main.event.ik.EventScriptManager.S27E43BC844883986)) {
            return null;
        };
        main.event.ik.EventScriptManager.S808C99201023B891 = new main.event.ik.ResidentData(main.event.ik.EventScriptManager.m_thisScene);
        main.event.ik.EventScriptManager.S27E43BC844883986 = true;
        return null;
    }

    @:hashAbi("SDE450FBFF9FE1481")
    public static function IsPlayEvent():Dynamic
    {
        return m_nowPlayingScript != null;
    }

    @:hashAbi("SF3D8E9AA6001278B")
    public static function ExecuteScript(?event:Dynamic, ?eventScriptParam:Dynamic):Dynamic
    {
        var result:Dynamic = -1;
        m_nowPlayingScript = event;
        if (m_nowPlayingScript != null)
        {
            eventScriptParam.f2F838001();
            m_nowPlayingScript.SetEventScriptParam(eventScriptParam);
            m_nowPlayingScript.CommonCreate();
            m_nowPlayingScript.LoadTextResource();
            var mainCoroutine = new ti.Coroutine(function():Dynamic
            {
                m_nowPlayingScript.mainBody();
                return null;
            }, "ExecuteScript mainBody");
            ti.Coroutine.yield();
            while (lua.Coroutine.status(mainCoroutine.m_coroutine) != Dead)
            {
                var resume:lua.Coroutine.CoroutineResume<Dynamic> = lua.Coroutine.resume(mainCoroutine.m_coroutine, null);
                if (!resume.success)
                {
                    throw new haxe.Exception("!Error ocurred in coroutine[" + Std.string(mainCoroutine.Name) + "]: " + Std.string(resume.result));
                }
                ti.Coroutine.yield();
            }
            m_nowPlayingScript.CommonEnd();
            result = m_nowPlayingScript.GetResultParam();
            m_nowPlayingScript.UnloadTextResource();
            m_nowPlayingScript.AllSubCorutinClear();
        }
        else
        {
            eventScriptParam.f2F838001();
        }
        return result;
    }

    @:hashAbi("S14F502D55CE61A8E")
    public static function GetSene():Dynamic
    {
        return main.event.ik.EventScriptManager.m_thisScene;
    }

    public static function S723E74ACB296C064(?arg0:Dynamic):Dynamic
    {
        if (cppbindings.C56DE81E7.f67AB4D7D()) {
            return false;
        };
        if (!cppbindings.C05D9A855.f59D006EE()) {
            return false;
        };
        if (lua.abi.Host.truthy(cppbindings.C56DE81E7.fE6D3994A())) {
            return false;
        };
        return !Lambda.exists(["SelfiePhotoModeEvent", "BenchEvent"], function(blockedEvent:String):StdTypes.Bool {
            return (blockedEvent == arg0);
        });
    }

    @:hashAbi("F7C68FEDB79AB6396")
    public override function Setup(context:Dynamic):Void
    {
        var object:cppbindings.C016374C1 = this.SceneObject;
        main.event.ik.EventScriptManager.m_thisScene = object.f462C9B70();
        if (!cppbindings.C9F1CEEC0.f464D6C09(main.event.ik.EventScriptManager.ScriptPckageName)) {
            return;
        };
        cppbindings.C9F1CEEC0.f1C610280(main.event.ik.EventScriptManager.ScriptPckageName);
    }

    @:hashAbi("FE94F3E13286232CF")
    public override function PreUpdate(context:Dynamic):Void
    {
        var timer:cppbindings.C7F7A5192;
        if (lua.abi.Host.truthy(cppbindings.C56DE81E7.fBEF91BAE())) {
            timer = untyped (cast context : Dynamic).f021998D9(cppbindings.C56DE81E7.f3BB77198());
        } else {
            timer = untyped (cast context : Dynamic).f88E57203();
        };
        main.event.ik.EventScriptManager.DeltaTime = timer.fC0E2CAD0();
        if (lua.abi.Host.truthy(main.event.ik.EventScriptManager.S27E43BC844883986)) {
            main.event.ik.EventScriptManager.S808C99201023B891.Update();
        };
        if ((main.event.ik.EventScriptManager.m_eventCoroutine != null)) {
            if ((lua.Coroutine.status(main.event.ik.EventScriptManager.m_eventCoroutine.m_coroutine) != (cast "dead"))) {
                var coroutine:ti.Coroutine = main.event.ik.EventScriptManager.m_eventCoroutine;
                var resume:lua.Coroutine.CoroutineResume<Dynamic> = lua.Coroutine.resume(coroutine.m_coroutine, context);
                if (!resume.success) {
                    throw new haxe.Exception(((("!Error ocurred in coroutine[" + Std.string(coroutine.Name)) + "]: ") + Std.string(resume.result)));
                };
                if ((main.event.ik.EventScriptManager.m_nowPlayingScript != null)) {
                    main.event.ik.EventScriptManager.m_nowPlayingScript.CommonUpdate();
                    main.event.ik.EventScriptManager.m_nowPlayingScript.UpdateSubCorutin(context);
                };
            } else {
                cppbindings.C56DE81E7.f3A721FAC();
                main.event.ik.EventScriptManager.m_eventCoroutine = null;
            };
        };
    }

    @:hashAbi("F1C2AA00ADAC52EC5")
    public override function Destroy():Void
    {
    }
}
