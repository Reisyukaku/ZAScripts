package event_ik;

import main.event.ik.base.BaseSubQuest;
import main.event.ik.command.IkScriptCommand;
import main.event.ik.command.IkScriptCommand.EaseCameraType;
import ext.gf.audio.SoundCommand;
import cppbindings.Vector3Values as Vector3;

@:keep
@:chunk("event_ik")
@:hashAbi("C593377277692FC4E")
@:expose("C593377277692FC4E")
class Ev_sub_056_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        Participants = ["npc_sub056_001"];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:String = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await(function():Dynamic {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        });
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_pokemon_sub056_1");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_056_010_talk_01", "sub_056");
        var selection:StdTypes.Int = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_056_010_select_01", "msg_Ev_sub_056_010_select_02"], 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if ((selection == 0)) {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-387.67, 1.79, -366.23] : Array<Float>)))), ((lua.Table.create(([-1.68, -52.87, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(22));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub056_1", 17);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, ((lua.Table.create(([-388.85, 1.58, -365.34] : Array<Float>)))), ((lua.Table.create(([-1.68, -52.87, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(22));
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_056_010_talk_02", "sub_056", null, false, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_EV_WILD_STRONG");
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        };
        this.m_resultParam = selection;
    }
}
