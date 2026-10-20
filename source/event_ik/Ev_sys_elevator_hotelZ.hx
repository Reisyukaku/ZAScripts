package event_ik;

import main.event.ik.base.BaseElevator;

@:keep
@:chunk("event_ik")
@:hashAbi("CA21F17F4443041AF")
@:expose("CA21F17F4443041AF")
class Ev_sys_elevator_hotelZ extends BaseElevator
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        var roofAvailable = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m01_0225");
        var phase = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_PHASE");
        if (m_eventScriptParam.f73EE8FEC() != "0")
        {
            m_floor_array.push(
            {
                floor_name: "msg_select_hotelz_01",
                idx: 0
            });
        }
        if (m_eventScriptParam.f73EE8FEC() != "1")
        {
            m_floor_array.push(
            {
                floor_name: "msg_select_hotelz_02",
                idx: 1
            });
        }
        if (roofAvailable == true && phase != 100020)
        {
            if (m_eventScriptParam.f73EE8FEC() != "2")
            {
                m_floor_array.push(
                {
                    floor_name: "msg_select_hotelz_04",
                    idx: 2
                });
            }
        }
        m_floor_array.push(
        {
            floor_name: "msg_select_cancel",
            idx: 3
        });
        return null;
    }
}
