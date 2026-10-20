package event_ik;

import lua.abi.EventHost;

import main.event.ik.command.IkScriptCommand;
import main.event.ik.base.BaseMainScenario;
import main.event.ik.command.TextResourceManager;

import cppbindings.C1A00019C;
import cppbindings.C4DDE9906;
import cppbindings.C5090F7B8;
import cppbindings.C552EBE69;
import cppbindings.C56DE81E7;
import cppbindings.C682D8E4F;
import cppbindings.CDDCCFBA7;
import lua.Table;

@:keep
@:chunk("event_ik")
@:expose("C0A5B3D3A91C83F78")
@:hashAbi("C0A5B3D3A91C83F78")
class BenchEvent extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        C56DE81E7.fCEBCC709("Ev_global_bench");
        IkScriptCommand.S3D047DB5B440735C();
        var target = C56DE81E7.fC4AD34C4("BOOT_CONDITION_CHECK_BENCH", 1);
        var scene = C56DE81E7.fC4AD34C4("BOOT_CONDITION_CHECK_BENCH", 2);
        var context:Dynamic = C682D8E4F.fEF94D11D(scene);
        var bench:Dynamic = context.fD4E64AB7(target);
        var position = EventHost.position(bench);
        var forward = EventHost.forward(bench.f64857644());
        var angles = EventHost.angles(bench.f64857644());
        var angle = angles[2] / (2 * lua.Math.pi) * 360.0;
        untyped this.m_resultParam = 0;
        var resource = TextResourceManager.GetTextResourcePath("script/bench");
        TextResourceManager.LoadTextResource(resource);
        Await(function() return TextResourceManager.IsCompleteLoadingTextResource(resource));
        C56DE81E7.f3500DC3A();
        // Both calls are present in the extract.
        if (EventHost.truthy(C56DE81E7.f3500DC3A()))
        {
            IkScriptCommand.ShowMessageWindow(2, "msg_killtime_cannot_01", "bench");
            IkScriptCommand.HideMessageWindow();
        }
        else
        {
            while (true)
            {
                IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
                IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
                IkScriptCommand.ShowMessageWindow(2, "msg_bench_00", "bench");
                var choice = IkScriptCommand.ShowContextMenu(
                ["msg_select_time", "msg_select_poke", "msg_select_end"], 0, true, false, null, null, "bench");
                IkScriptCommand.HideMessageWindow();
                // Reconstructed closure captures: self, position, forward, angle.
                var startIdle = [function()
                {
                    CreateSubCorutin("BenchIdleMotion", function():Void
                    {
                        var player:Dynamic = IkScriptCommand.GetCharacterAccessorEvent("Player");
                        C552EBE69.fEC583E87(player);
                        var random:Dynamic = C1A00019C.f101D811F();
                        random.f8C8B6BB6();
                        var delay:Float = random.fDAAAA586(2) + 3;
                        var clock:Dynamic = C4DDE9906.f544F902B();
                        var last:Float = clock.f9D26E972();
                        var finished = false;
                        // Never set true in the supplied decompilation.
                        while (true)
                        {
                            Suspend();
                            if (!EventHost.truthy(player.f49AF6CD7()))
                            {
                                var clock:Dynamic = C4DDE9906.f544F902B();
                                last = clock.f9D26E972();
                            }
                            else
                            {
                                var clock:Dynamic = C4DDE9906.f544F902B();
                                if (delay < clock.f9D26E972() - last)
                                {
                                    var animation = 300;
                                    var clock:Dynamic = C4DDE9906.f544F902B();
                                    if ((cast(clock.f9D26E972(), Float) % 2) == 0) animation = 301;
                                    player.f0D2E2377();
                                    player.f02A80C92();
                                    EventHost.idleAndWait(animation);
                                    var clock:Dynamic = C4DDE9906.f544F902B();
                                    last = clock.f9D26E972();
                                    delay = random.fDAAAA586(2) + 3;
                                }
                            }
                            if (finished)
                            {
                                finished = false;
                                break;
                            }
                        }
                    });
                }];
                var stopIdle = [function()
                {
                    RemoveSubCorutin("BenchIdleMotion");
                }];
                var relax = function()
                {
                    CDDCCFBA7.f1B77253E("relaxed_cnt", 1);
                    IkScriptCommand.ExecuteBGMCommand("SYS_BENCHI_RELAX_IN");
                    IkScriptCommand.Fade_Out("transition_fade_inout");
                    IkScriptCommand.Wait_Fade();
                    SitDownBench(position, forward, angle);
                    IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
                    startIdle[0]();
                    IkScriptCommand.StartBenchRelaxState();
                    stopIdle[0]();
                    EventHost.animationAndWait(1);
                    MoveFrontBench(position, forward, angle);
                    IkScriptCommand.Wait_Fade();
                };
                if (choice == 0)
                {
                    if (SelectTimeSkip(position, forward, angle)) break;
                }
                else if (choice == 1)
                {
                    relax();
                    break;
                }
                else if (choice == 2) break;
            }
        }
        TextResourceManager.UnloadTextResource(resource);
        C56DE81E7.fD2281D7A("Ev_global_bench");
        IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_OFF");
    }

    @:hashAbi("F59ADE74F1BA73143")
    public function SelectTimeSkip(position:Table<Int, Float>, forward:Table<Int, Float>, angle:Float):Bool
    {
        var daytime = C5090F7B8.fB628218B();
        IkScriptCommand.ShowMessageWindow(2,
        EventHost.truthy(daytime) ? "msg_bench_02" : "msg_bench_03", "bench");
        var choice = IkScriptCommand.ShowContextMenu(
        ["msg_select_yes", "msg_select_no"], 0, true, false, null, null, "bench");
        IkScriptCommand.HideMessageWindow();
        if (choice == 0)
        {
            IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
            IkScriptCommand.ExecuteBGMCommand("EV_CMN_AREA_TRANSITION_ON");
            CDDCCFBA7.f1B77253E("bench_cnt", 1);
            IkScriptCommand.Fade_Out("transition_fade_inout");
            IkScriptCommand.Wait_Fade();
            MoveFrontBench(position, forward, angle);
            if (EventHost.truthy(daytime))
            {
                untyped this.m_resultParam = 1;
                C56DE81E7.fC88AB2B8(20);
            }
            else
            {
                untyped this.m_resultParam = 2;
                C56DE81E7.fC88AB2B8(4);
            }
        }
        return choice == 0;
    }

    @:hashAbi("F53C14BF07D5FA46F")
    public function SitDownBench(position:Table<Int, Float>, forward:Table<Int, Float>, angle:Float):Void
    {
        EventHost.prepareAndWait(495);
        EventHost.animationAndWait(214);
        IkScriptCommand.FObj_Set_Pos_Ang("Player", position[1] + forward[1] * 0.1,
        position[2] + forward[2] * 0.1, position[3] + forward[3] * 0.1, angle);
    }

    @:hashAbi("F0D1C1D08BFBBE2C7")
    public function MoveFrontBench(position:Table<Int, Float>, forward:Table<Int, Float>, angle:Float):Void
    {
        EventHost.moveAndWait(position[1] + forward[1], position[2] + forward[2] + 0.5,
        position[3] + forward[3], angle);
    }
}
