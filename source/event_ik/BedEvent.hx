package event_ik;

import lua.abi.EventHost;

import main.event.ik.command.IkScriptCommand;
import main.event.ik.base.BaseEvent;
import ext.gf.audio.SoundCommand;
import main.event.ik.command.TextResourceManager;

import cppbindings.C5090F7B8;
import cppbindings.C56DE81E7;
import lua.Table;

@:keep
@:chunk("event_ik")
@:expose("CF5D1E1D783821953")
@:hashAbi("CF5D1E1D783821953")
class BedEvent extends BaseEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped this.m_resultParam = 0;
        var resource = TextResourceManager.GetTextResourcePath("script/bed");
        TextResourceManager.LoadTextResource(resource);
        Await(function() return TextResourceManager.IsCompleteLoadingTextResource(resource));
        SelectTimeSkip(EventHost.vector(2.27, 0.02, 0.07), -90);
        TextResourceManager.UnloadTextResource(resource);
    }

    @:hashAbi("F59ADE74F1BA73143")
    public function SelectTimeSkip(position:Table<Int, Float>, angle:Float):Bool
    {
        var blocked = C56DE81E7.f3500DC3A();
        if (EventHost.truthy(blocked))
        {
            IkScriptCommand.ShowMessageWindow(2, "msg_bed_cannot_01", "bed");
            IkScriptCommand.HideMessageWindow();
            return false;
        }
        IkScriptCommand.ShowMessageWindow(2, "msg_bed_01", "bed");
        C5090F7B8.fB628218B();
        // Deliberately retained even though its result is unused.
        var label = EventHost.truthy(IkScriptCommand.S945A889425CEA31C(4, 19))
        ? "msg_select_bed_01" : "msg_select_bed_02";
        var choice = IkScriptCommand.ShowContextMenu(
        [label, "msg_select_bed_06"], 0, true, false, null, null, "bed");
        IkScriptCommand.HideMessageWindow();
        if (choice == 0)
        {
            SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_1_5S");
            SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
            IkScriptCommand.Fade_Out("transition_fade_inout", 2.0);
            IkScriptCommand.Wait_Time(1.0);
            IkScriptCommand.PokemonRecoverySeq("", "PLAY_ME_IK_M_KAIFUKU_BED");
            IkScriptCommand.Wait_Fade();
            MoveBedSide(position, angle);
            if (!EventHost.truthy(blocked))
            {
                if (EventHost.truthy(IkScriptCommand.S945A889425CEA31C(4, 19)))
                {
                    C5090F7B8.f92941AC0("flag_Bed_Time", true);
                    C56DE81E7.fB773E582(20, 0, 0);
                    IkScriptCommand.CameraResetRotation();
                    SoundCommand.ExecuteBGMCommand("EV_CMN_STAY_RESET_BED");
                    SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_0S");
                    SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
                    IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
                    IkScriptCommand.Wait_Fade();
                }
                else
                {
                    C56DE81E7.fB773E582(4, 0, 0);
                    untyped this.m_resultParam = 2;
                    IkScriptCommand.CameraResetRotation();
                    SoundCommand.ExecuteBGMCommand("EV_CMN_STAY_RESET_BED");
                    SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_FORCE_ON");
                }
            }
        }
        return choice == 0;
    }

    @:hashAbi("FA43D30278CBAEF88")
    public function MoveBedSide(position:Table<Int, Float>, angle:Float):Void
    {
        EventHost.moveAndWait(position[1], position[2], position[3], angle);
    }
}
