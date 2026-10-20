package main.event.ik.base;

import main.event.ik.command.IkScriptCommand;
import main.event.ik.command.CharacterCommand;
import main.util.StrUtil;
import cppbindings.Vector3Values as Vector3;
import cppbindings.Vector4Values as Vector4;
import cppbindings.CE8D61D7D as ParticleComponent;
import cppbindings.C2FE46DCA as BaseChrAccessor;
import cppbindings.C65853BD0 as ChrAccessorForEvent;
import cppbindings.C56DE81E7;
import haxe.ds.StringMap;

@:keep
@:chunk("main")
@:hashAbi("CA0617EFEEED227D6")
@:expose("CA0617EFEEED227D6")
class BaseBattleTalkEvent extends BaseEvent
{
    @:abiSlot(8)
    public var B_LINE_IN_EFF_KEY:String = "btl_event_line_eff";

    @:abiSlot(9)
    public var B_LINE_OUT_EFF_KEY:String = "btl_event_line2_eff";

    @:abiSlot(10)
    public var slot10:String = "";

    @:abiSlot(11)
    public var slot11:String = "dyn_battle_obj";

    @:abiSlot(12)
    public var slot12:Bool = false;

    @:abiSlot(13)
    public var slot13:StringMap<Vector4>;

    @:abiSlot(14)
    public var slot14:String = "outgame";

    @:abiSlot(15)
    public var slot15:String = "ui";

    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        var ownerSnapshot:main.event.ik.base.BaseBattleTalkEvent = this;
        cppbindings.C56DE81E7.f7761183A(true);
        this.slot10 = main.event.ik.command.IkScriptCommand.GetBattleEnemyObjName();
        this.m_isResetMotionAtCommonEnd = false;
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_line01", this.B_LINE_IN_EFF_KEY, this.slot14);
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_line02", this.B_LINE_OUT_EFF_KEY, this.slot14);
        main.event.ik.command.IkScriptCommand.FadeOutType(8);
        this.Await(function():StdTypes.Bool {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(ownerSnapshot.B_LINE_IN_EFF_KEY);
        });
        main.event.ik.command.IkScriptCommand.SC171403DAE7D447B();
        cppbindings.C56DE81E7.f23EB92EE(this.B_LINE_IN_EFF_KEY, this.slot15);
        cppbindings.C56DE81E7.f23EB92EE(this.B_LINE_OUT_EFF_KEY, this.slot15);
        this.slot13 = new haxe.ds.StringMap();
        cppbindings.C56DE81E7.f7A18ACB1(false, function(name:String):StdTypes.Void {
            ownerSnapshot.F3E4D129EBEFAE608(name);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(name, false, true, false);
        });
        cppbindings.C56DE81E7.f7A18ACB1(true, function(name:String):StdTypes.Void {
            ownerSnapshot.F3E4D129EBEFAE608(name);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(name, false, true, false);
        });
        cppbindings.C56DE81E7.f1AF89D32(true);
        return null;
    }

    @:hashAbi("F3250254222F75035")
    public override function OnEnd():Dynamic
    {
        var ownerSnapshot:main.event.ik.base.BaseBattleTalkEvent = this;
        this.Await(function():StdTypes.Bool {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(ownerSnapshot.B_LINE_OUT_EFF_KEY);
        });
        var particle:cppbindings.CE8D61D7D = main.event.ik.command.IkScriptCommand.GetEffectParticleComp(this.B_LINE_OUT_EFF_KEY);
        main.event.ik.command.IkScriptCommand.PlayEffect(this.B_LINE_OUT_EFF_KEY);
        main.event.ik.command.IkScriptCommand.FadeOutType(8);
        main.event.ik.command.IkScriptCommand.KillEffect(this.B_LINE_IN_EFF_KEY);
        this.Await(function():StdTypes.Bool {
            return particle.f11CC5570();
        });
        this.F531B6BACAB79B38F();
        main.event.ik.command.IkScriptCommand.S7BF170BA136B3024();
        cppbindings.C56DE81E7.f1AF89D32(false);
        main.event.ik.command.IkScriptCommand.S1AD21CC7D382F5A1();
        cppbindings.C56DE81E7.f7761183A(false);
        return true;
    }

    @:hashAbi("F7198FC1A51594367")
    public override function OnPostEnd():Dynamic
    {
        IkScriptCommand.ResetToFieldCamera(0.0);
        IkScriptCommand.Suspend();
        if (!slot12)
        {
            IkScriptCommand.FadeInType();
        }
        IkScriptCommand.SetSuspendInputFieldCamera(false);
        return null;
    }

    @:hashAbi("F7D98F9CD5639D733")
    public function RegistEventScenario(charaName:String):Dynamic
    {
        var character:cppbindings.C65853BD0 = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(charaName);
        character.f02A80C92();
        while (!character.f49AF6CD7()) {
            this.Suspend();
        };
        return null;
    }

    @:hashAbi("F47BA90C282223C1A")
    public function StartBattleLineEff():Dynamic
    {
        IkScriptCommand.PlayEffect(B_LINE_IN_EFF_KEY);
        return null;
    }

    @:hashAbi("FAB83B4DF2F085F1E")
    public function CreateBattleNpc(npcID:String):Dynamic
    {
        var position:Array<StdTypes.Float> = main.event.ik.command.IkScriptCommand.GetBattleStartPos_Enemy();
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot11, ((lua.Table.create(([position[1], position[2], position[3]] : Array<Float>)))), position[4], npcID, this.slot14);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        return null;
    }

    public function FECCD6BC3CF2CA19B():Dynamic
    {
        slot12 = true;
        return null;
    }

    public function F3E4D129EBEFAE608(name:String):Dynamic
    {
        var coordinates:cppbindings.Vec3 = cppbindings.C56DE81E7.fAFFCA1B3(name);
        var x:StdTypes.Null<StdTypes.Float> = coordinates.x;
        var position:lua.Table<Int, Float> = (if ((x == null)) {
            null;
        } else {
            {
                var x:StdTypes.Float = coordinates.x;
                var y:StdTypes.Float = coordinates.y;
                var z:StdTypes.Float = coordinates.z;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
        var character:cppbindings.C2FE46DCA = main.event.ik.command.CharacterCommand.GetAccessorNoScenario(name);
        var angles:lua.Table<Int, Float> = ({
            var _this:cppbindings.CD5675BA5 = character.f64857644();
            {
                var v:cppbindings.Vec3 = _this.f643B5D6F();
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues3:lua.Table<Int, Float>;
                    vectorValues3 = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues3);
                };
            };
        });
        var yaw:StdTypes.Float = (((cast angles)[2] / (2 * lua.Math.pi)) * 360.0);
        var pose:lua.Table<Int, Float> = ((lua.Table.create(([(cast position)[1], (cast position)[2], (cast position)[3], yaw] : Array<Float>))));
        if ((position != null)) {
            this.FF4139941E7F5D1CE(pose);
            this.slot13.set(name, pose);
        };
        return null;
    }

    public function F531B6BACAB79B38F():Dynamic
    {
        var pose:StdTypes.Null<lua.Table<Int, Float>> = this.slot13.get(this.slot10);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Ang_To_Pos("Player", ((lua.Table.create(([(cast pose)[1], (cast pose)[2], (cast pose)[3]] : Array<Float>))))));
        return null;
    }

    public function FF4139941E7F5D1CE(pose:Vector4, format:String = "%4.2f"):String
    {
        return (((((((("(" + main.util.StrUtil.Format(format, (cast pose)[1])) + ", ") + main.util.StrUtil.Format(format, (cast pose)[2])) + ", ") + main.util.StrUtil.Format(format, (cast pose)[3])) + ", ") + main.util.StrUtil.Format(format, (cast pose)[4])) + ")");
    }

    public function FE3D21257A15678CA():Dynamic
    {
        IkScriptCommand.SDF42F9D9961D0772();
        IkScriptCommand.FadeInType();
        return null;
    }
}
