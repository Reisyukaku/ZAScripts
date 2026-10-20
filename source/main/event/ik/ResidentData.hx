package main.event.ik;

@:keep
@:chunk("main")
@:hashAbi("CA9C3417521738D96")
@:expose("CA9C3417521738D96")
class ResidentData
{
    @:hashAbi("S4F1CD124BC230620")
    public static var S4F1CD124BC230620:ti.Coroutine;
    @:hashAbi("SCE2DB9206C87F41E")
    public static var SCE2DB9206C87F41E:cppbindings.C016374C1;

    public function new(?scene:cppbindings.CA042DA13)
    {
        main.event.ik.ResidentData.S4F1CD124BC230620 = new ti.Coroutine(function():StdTypes.Void {
            var template:StdTypes.Null<cppbindings.C451059A3> = cppbindings.C451059A3.f5776B6C6("world/ik_obj_template/ob/ob0004_00_phone_/ob0004_00_phone.trsot");
            while (!template.f900312E7()) {
                main.event.ik.command.IkScriptCommand.Suspend();
            };
            main.event.ik.ResidentData.SCE2DB9206C87F41E = scene.f68159593("resident_cache_rotom_phone", template);
            while ((!main.event.ik.ResidentData.SCE2DB9206C87F41E.f9D8BC178() || !main.event.ik.ResidentData.SCE2DB9206C87F41E.f48F8C7FF())) {
                main.event.ik.command.IkScriptCommand.Suspend();
            };
            var model:StdTypes.Null<cppbindings.CECB91E31> = cppbindings.CECB91E31.fB41FD22F(main.event.ik.ResidentData.SCE2DB9206C87F41E);
            while ((model == null)) {
                main.event.ik.command.IkScriptCommand.Suspend();
                model = cppbindings.CECB91E31.fB41FD22F(main.event.ik.ResidentData.SCE2DB9206C87F41E);
            };
            model.f6754453E(false);
        }, "ResidentDataSetup");
    }

    @:hashAbi("FEB6685558281F194")
    public function Update(?arg0:Dynamic):Dynamic
    {
        if (S4F1CD124BC230620 == null || lua.Coroutine.status(S4F1CD124BC230620.m_coroutine) == Dead)
        {
            return null;
        }
        var coroutine = S4F1CD124BC230620;
        var resume:lua.Coroutine.CoroutineResume<Dynamic> = lua.Coroutine.resume(coroutine.m_coroutine, null);
        if (!resume.success)
        {
            throw new haxe.Exception("!Error ocurred in coroutine[" + Std.string(coroutine.Name) + "]: " + Std.string(resume.result));
        }
        return null;
    }
}
