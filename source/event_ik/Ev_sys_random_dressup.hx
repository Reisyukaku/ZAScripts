package event_ik;

import main.event.ik.command.IkScriptCommand;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("C369737D3348E4D06")
@:expose("C369737D3348E4D06")
class Ev_sys_random_dressup extends BaseEvent
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    public function new()
    {
        untyped (this)[9] = "";
        untyped (this)[8] = "coordination";
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        this.slot9 = main.event.ik.command.IkScriptCommand.GetLastInteractObjectName("BOOT_CONDITION_TALK_NPC");
        var textResourcePath:String = main.event.ik.command.TextResourceManager.GetTextResourcePath(lua.abi.Host.concat(Std.string("script/"), Std.string(this.slot8)));
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt(this.slot9, "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", this.slot9, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, "Player", "head");
        if (lua.abi.Host.truthy(untyped main.event.ik.command.IkScriptCommand.GetFlagValue("flag_today_used_random_dressup")))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_coordination_talk_14", this.slot8, this.slot9);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
            return;
        };
        if (!lua.abi.Host.truthy(untyped main.event.ik.command.IkScriptCommand.GetFlagValue("flag_first_random_dressup")))
        {
            this.F8CA6CB07B9E5D81B();
            main.event.ik.command.IkScriptCommand.SetFlagValue("flag_first_random_dressup", true);
        };
        this.F71238A508499EE1E();
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
    public function F8CA6CB07B9E5D81B():Dynamic
    {
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_coordination_talk_01", untyped (this)[8], untyped (this)[9]);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_coordination_talk_02", untyped (this)[8], untyped (this)[9]);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(untyped (this)[9], 2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(untyped (this)[9], "serious");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_coordination_talk_03", untyped (this)[8], untyped (this)[9], true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(untyped (this)[9], "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_coordination_talk_04", untyped (this)[8], untyped (this)[9]);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_coordination_talk_05", untyped (this)[8], untyped (this)[9]);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_coordination_talk_06", untyped (this)[8], untyped (this)[9]);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(untyped (this)[9], 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        return null;
    }
    public function F71238A508499EE1E():Dynamic
    {
        if (IkScriptCommand.ShowMessageAndContext("msg_coordination_talk_07", slot8, slot9, ["msg_coordination_select_01", "msg_coordination_select_02"], null, null) == 0)
        {
            var selection:Dynamic = IkScriptCommand.ShowMessageAndContext("msg_coordination_talk_08", slot8, slot9, ["msg_coordination_select_03", "msg_coordination_select_04"], null, null);
            if (selection == 0)
            {
                IkScriptCommand.ShowMessage(0, "msg_coordination_talk_09", slot8, slot9);
                IkScriptCommand.HideMessageWindow();
                ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CHANGE_UNIFORM");
                IkScriptCommand.Fade_Out("White");
                IkScriptCommand.Wait_Fade();
                cppbindings.C56DE81E7.f15F37D80();
                Suspend();
                Await_no_timeout(function():Dynamic
                {
                    return cppbindings.C56DE81E7.f41F85820();
                });
                IkScriptCommand.Fade_In("White", 1.0);
                IkScriptCommand.Wait_Fade();
                IkScriptCommand.ShowMessage(0, "msg_coordination_talk_10", slot8, slot9);
                IkScriptCommand.ShowMessage(0, "msg_coordination_talk_11", slot8, slot9);
                IkScriptCommand.HideMessageWindow();
                IkScriptCommand.SetFlagValue("flag_today_used_random_dressup", true);
                IkScriptCommand.SetFlagValue("flag_used_random_dressup", true);
            }
            else
            {
                IkScriptCommand.HideMessageWindow();
                IkScriptCommand.ShowMessage(0, "msg_coordination_talk_15", slot8, slot9);
                IkScriptCommand.HideMessageWindow();
            }
        }
        else
        {
            IkScriptCommand.HideMessageWindow();
            IkScriptCommand.ShowMessage(0, "msg_coordination_talk_15", slot8, slot9);
            IkScriptCommand.HideMessageWindow();
        }
        return null;
    }
}
