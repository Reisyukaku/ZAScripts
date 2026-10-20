package event_ik;

import main.event.ik.base.BaseElevator;

@:keep
@:chunk("event_ik")
@:hashAbi("C306DDF17EB7E1C76")
@:expose("C306DDF17EB7E1C76")
class Ev_sys_elevator_lab extends BaseElevator
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        if (m_eventScriptParam.f73EE8FEC() != "0")
        {
            m_floor_array.push(
            {
                floor_name: "msg_select_lab_01",
                idx: 0
            });
        }
        if (m_eventScriptParam.f73EE8FEC() != "1")
        {
            m_floor_array.push(
            {
                floor_name: "msg_select_lab_02",
                idx: 1
            });
        }
        if (m_eventScriptParam.f73EE8FEC() != "2")
        {
            m_floor_array.push(
            {
                floor_name: "msg_select_lab_03",
                idx: 2
            });
        }
        m_floor_array.push(
        {
            floor_name: "msg_select_cancel",
            idx: 4
        });
        return null;
    }
}
