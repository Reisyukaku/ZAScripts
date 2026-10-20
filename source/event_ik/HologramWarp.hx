package event_ik;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("C5CB0251027921F9B")
@:expose("C5CB0251027921F9B")
class HologramWarp extends BaseEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var ownerSnapshot:event_ik.HologramWarp = this;
        untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC();
        untyped (cast this.m_eventScriptParam : Dynamic).fBF448F72();
        untyped (cast this.m_eventScriptParam : Dynamic).fB581866B();
        main.event.command.EventCameraCommand.Push(true);
        main.event.ik.command.IkScriptCommand.SetSuspendCollisionFieldCamera(true);
        var destinationText:Array<String> = ((cast untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC() : String)).split(",");
        var cameraText:Array<String> = ((cast untyped (cast this.m_eventScriptParam : Dynamic).fBF448F72() : String)).split(",");
        var lookText:Array<String> = ((cast untyped (cast this.m_eventScriptParam : Dynamic).fB581866B() : String)).split(",");
        var player:Dynamic = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent("Player");
        var partner:Dynamic = untyped (cast player : Dynamic).f4F420785();
        if ((partner != null)) {
            main.event.ik.command.IkScriptCommand.FObj_Set_InvincibleForAccessor(partner, true);
        } else {
            this.CreateSubCorutin("find_partner", function():StdTypes.Void {
                while ((partner == null)) {
                    {
                        untyped __lua__("_G[{0}] = {1}", "_hx_do_first_1", (cast false));
                    };
                    partner = untyped (cast player : Dynamic).f4F420785();
                    if ((partner != null)) {
                        main.event.ik.command.IkScriptCommand.FObj_Set_InvincibleForAccessor(partner, true);
                    };
                    ownerSnapshot.Suspend();
                };
            });
        };
        var start:cppbindings.Vec3 = untyped (cast player : Dynamic).f7360ED03();
        var startPosition:lua.Table<StdTypes.Int, StdTypes.Float> = lua.Table.create([start.x, start.y, start.z]);
        main.event.ik.command.IkScriptCommand.CreateEffect("field/gimmick/holovator/holovator_warp", "HologramWarpEffect");
        while (!lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.IsSetUpEffect("HologramWarpEffect"))) {
            {
                untyped __lua__("_G[{0}] = {1}", "_hx_do_first_1", (cast false));
            };
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        main.event.ik.command.IkScriptCommand.SA9FF85CB1BCD2DA4();
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition("HologramWarpEffect", startPosition[1], (startPosition[2] + 1), startPosition[3]);
        main.event.ik.command.IkScriptCommand.PlayEffect("HologramWarpEffect");
        ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_GMK_HOLOVATOR_IN", startPosition);
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false, false);
        main.event.ik.command.IkScriptCommand.Suspend();
        var destination:lua.Table<StdTypes.Int, StdTypes.Float> = lua.Table.create([Std.parseFloat(destinationText[0]), Std.parseFloat(destinationText[1]), Std.parseFloat(destinationText[2])]);
        var destinationAngle:StdTypes.Float = Std.parseFloat(destinationText[3]);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", destination[1], destination[2], destination[3], destinationAngle));
        var cameraYaw:StdTypes.Float = Std.parseFloat(cameraText[0]);
        var cameraHeight:StdTypes.Float = Std.parseFloat(cameraText[1]);
        var cameraDuration:StdTypes.Float = Std.parseFloat(cameraText[2]);
        var cameraDistance:StdTypes.Float = Std.parseFloat(cameraText[3]);
        var resetSeconds:StdTypes.Float = Std.parseFloat(cameraText[4]);
        var cameraOffset:StdTypes.Float = Std.parseFloat(cameraText[5]);
        var playerAngles:lua.Table<Int, Float> = ({
            var _this:cppbindings.CD5675BA5 = (cast untyped (cast player : Dynamic).f64857644());
            {
                var v:cppbindings.Vec3 = _this.f643B5D6F();
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues:lua.Table<Int, Float>;
                    vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues);
                };
            };
        });
        var yawRadians:StdTypes.Float = (((cameraYaw / 360.0) * 2) * lua.Math.pi);
        main.event.ik.command.IkScriptCommand.Camera_Move_Target_Horizontal(cameraDuration, lua.Table.create([Std.parseFloat(lookText[0]), Std.parseFloat(lookText[1]), Std.parseFloat(lookText[2])]), cppbindings.CD5675BA5.fFA44D7AF(yawRadians, (cast playerAngles)[1], (cast playerAngles)[3]), cameraDistance, cameraHeight, null, lua.Table.create([cameraOffset, 0, 0]));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ResetToFieldCamera(resetSeconds, 3, cameraYaw);
        ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_GMK_HOLOVATOR_MOVE", startPosition);
        main.event.ik.command.IkScriptCommand.Wait_ResetToFieldCamera();
        main.event.ik.command.IkScriptCommand.S80725197C3054FB8();
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition("HologramWarpEffect", destination[1], (destination[2] + 1), destination[3]);
        main.event.ik.command.IkScriptCommand.PlayEffect("HologramWarpEffect");
        ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_GMK_HOLOVATOR_OUT", destination);
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true, false);
        if ((partner != null)) {
            untyped (cast partner : Dynamic).fA73BFE2C();
        };
        var particles:Dynamic = main.event.ik.command.IkScriptCommand.GetEffectParticleComp("HologramWarpEffect");
        while (!lua.abi.Host.truthy(untyped (cast particles : Dynamic).f11CC5570())) {
            {
                untyped __lua__("_G[{0}] = {1}", "_hx_do_first_1", (cast false));
            };
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        main.event.ik.command.IkScriptCommand.SetSuspendCollisionFieldCamera(false);
    }
}
