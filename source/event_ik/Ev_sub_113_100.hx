package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CC5E7B6EBAFFE8F68")
@:expose("CC5E7B6EBAFFE8F68")
class Ev_sub_113_100 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub113_001", "npc_pokemon_sub113_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        var course:Dynamic = untyped m_eventScriptParam.f73EE8FEC();
        if ("1" == course)
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-904.3), 1.99, (-272.22)]), lua.Table.create([(-5.05), (-128.15), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)), null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
        }
        else if ("2" == course)
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-900.06), 3.6, (-295.8)]), lua.Table.create([(-3.73), 97.12, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)), null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
        }
        else if ("3" == course)
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-583.76), 1.29, (-24.99)]), lua.Table.create([2.17, (-90.07), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)), null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
        };
        var effectKey = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub113_001", "Player", "head");
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_UI_QUEST_GUIDE_ON");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_113_100_talk_01", "sub_113", "npc_sub113_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_ATHLETIC_START");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.15, 2.0, 10, 4, 0, 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_113_100_talk_02", "sub_113", "npc_sub113_001", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.SetResetCameraDataAtEventEnd(0.2);
    }
}
