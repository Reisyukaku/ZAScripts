package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C121D9AF11205023C")
@:expose("C121D9AF11205023C")
class Ev_sys_common_reward_battle extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        // Every script parameter is read fresh from m_eventScriptParam; nothing is cached.
        var hasText:Bool = m_eventScriptParam.f73EE8FEC() != "";
        var textResource:Dynamic = "";
        if (hasText)
        {
            textResource = main.event.ik.command.TextResourceManager.GetTextResourcePath((m_eventScriptParam.f73EE8FEC() : String) + "/" + (m_eventScriptParam.fBF448F72() : String));
            main.event.ik.command.TextResourceManager.LoadTextResource(textResource);
            this.Await(function():Dynamic
            {
                return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResource);
            });
        }
        var placement:Array<String> = (m_eventScriptParam.fF7A48116() : String).split(",");
        // The last parseFloat and the final native getter forward all of their results.
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("reward_battle_npc", lua.Table.create([Std.parseFloat(placement[0]), Std.parseFloat(placement[1]), Std.parseFloat(placement[2])]), Std.parseFloat(placement[3]), m_eventScriptParam.f792B86F5());
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-260.0, 3.41, -287.69]), lua.Table.create([-5.82, -120.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)), null, null, null);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-260.0, 1.41, -287.69]), lua.Table.create([-5.82, -120.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)), null, null, null);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "reward_battle_npc", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("reward_battle_npc", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        if (hasText)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, m_eventScriptParam.fB581866B(), m_eventScriptParam.fBF448F72(), "reward_battle_npc");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        main.event.ik.command.IkScriptCommand.S5947B527097768D0(4);
        if (hasText)
        {
            main.event.ik.command.TextResourceManager.UnloadTextResource(textResource);
        }
    }
}
