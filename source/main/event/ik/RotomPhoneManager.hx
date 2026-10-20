package main.event.ik;

@:keep
@:chunk("main")
@:hashAbi("C7085D79B61819838")
@:expose("C7085D79B61819838")
class RotomPhoneManager
{
    @:hashAbi("SC38A9E9B89715C89")
    public static var s_rotomPhoneObjMap:haxe.ds.StringMap<RotomPhone> = new haxe.ds.StringMap();
    @:hashAbi("S7928AFA550DFCE28")
    public static var s_lookAtCharaList:haxe.ds.List<String> = new haxe.ds.List();
    @:hashAbi("S06BC88998557798E")
    public static var s_objectTemplate:Dynamic;

    @:hashAbi("S805CA52A14D4517F")
    public static function TerminateAll():Dynamic
    {
        for (phone in s_rotomPhoneObjMap)
        {
            phone.Destroy();
        }
        for (charaId in s_lookAtCharaList)
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End(charaId);
        }
        s_rotomPhoneObjMap.clear();
        s_lookAtCharaList.clear();
        s_objectTemplate = null;
        return null;
    }
    @:hashAbi("S5E6095DB2C316492")
    public static function CreateRotomPhone(?charaId:Dynamic, ?modelLabel:Dynamic, ?isAsyncCharaCreWait:Dynamic):Dynamic
    {
        if (isAsyncCharaCreWait == null)
        {
            isAsyncCharaCreWait = false;
        }
        if (s_rotomPhoneObjMap.exists(charaId))
        {
            return null;
        }
        if (s_objectTemplate == null)
        {
            s_objectTemplate = cppbindings.C451059A3.f5776B6C6("world/ik_obj_template/ob/ob0004_00_phone_/ob0004_00_phone.trsot");
            while (!lua.abi.Host.truthy(s_objectTemplate.f900312E7()))
            {
                main.event.ik.command.IkScriptCommand.Suspend();
            }
        }
        var phone = new RotomPhone(charaId, s_objectTemplate);
        while (!lua.abi.Host.truthy(phone.IsSetup()))
        {
            main.event.ik.command.IkScriptCommand.Suspend();
        }
        phone.OnSetup(modelLabel, isAsyncCharaCreWait);
        s_rotomPhoneObjMap.set(charaId, phone);
        return null;
    }
    @:hashAbi("SC7D720274BCA195B")
    public static function UpdateCreateRotomPhone(?charaId:Dynamic):Dynamic
    {
        if (!s_rotomPhoneObjMap.exists(charaId))
        {
            return true;
        }
        return s_rotomPhoneObjMap.get(charaId).UpdateCharaCreWait();
    }
    @:hashAbi("S697D344268108BFC")
    public static function IsFinishedCreateRotomPhone(?charaId:Dynamic):Dynamic
    {
        if (!s_rotomPhoneObjMap.exists(charaId))
        {
            return true;
        }
        return s_rotomPhoneObjMap.get(charaId).IsFinishCharaCreWait();
    }
    @:hashAbi("SC4D9AD0D17CE892C")
    public static function LookAtRotomPhone(?charaId:Dynamic):Dynamic
    {
        var position = GetWaistTranslation(charaId);
        if (position == null)
        {
            return null;
        }
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(charaId, position);
        s_lookAtCharaList.push(charaId);
        return null;
    }
    @:hashAbi("SDFEE8DC48A0E3E06")
    public static function LookAtRotomPhoneOhter(?lookAtCharaId:Dynamic, ?rotomPhoneId:Dynamic):Dynamic
    {
        var position = GetWaistTranslation(rotomPhoneId);
        if (position == null)
        {
            return null;
        }
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(lookAtCharaId, position);
        s_lookAtCharaList.push(lookAtCharaId);
        return null;
    }
    @:hashAbi("S4F3C9624C0916AC3")
    public static function AttachOwner(?charaId:Dynamic):Dynamic
    {
        if (s_rotomPhoneObjMap.exists(charaId))
        {
            s_rotomPhoneObjMap.get(charaId).AttachOwner();
        }
        return null;
    }
    @:hashAbi("SC045DC199F780F46")
    public static function AttachOther(?sourceOwnerCaraId:Dynamic, ?attachChara:Dynamic):Dynamic
    {
        if (s_rotomPhoneObjMap.exists(sourceOwnerCaraId))
        {
            s_rotomPhoneObjMap.get(sourceOwnerCaraId).AttachOther(attachChara);
        }
        return null;
    }
    @:hashAbi("SEE2F581BCF44FCD2")
    public static function Detach(?charaId:Dynamic):Dynamic
    {
        if (s_rotomPhoneObjMap.exists(charaId))
        {
            s_rotomPhoneObjMap.get(charaId).Detach();
        }
        return null;
    }

    @:hashAbi("S748A3DCD68216D1D")
    public static function PlayAnime(?charaId:Dynamic, ?anime:Dynamic):Dynamic
    {
        if (s_rotomPhoneObjMap.exists(charaId))
        {
            s_rotomPhoneObjMap.get(charaId).PlayAnime(anime);
        }
        return null;
    }
    @:hashAbi("S9BCBCF03202C0135")
    public static function WaitAnimeState(?charaId:Dynamic, ?anime:Dynamic):Dynamic
    {
        if (s_rotomPhoneObjMap.exists(charaId))
        {
            s_rotomPhoneObjMap.get(charaId).WaitAnimeState(anime);
        }
        return null;
    }
    @:hashAbi("SCCF850567AA03BC8")
    public static function GetWaistTranslation(?charaId:Dynamic):Dynamic
    {
        if (!s_rotomPhoneObjMap.exists(charaId))
        {
            return null;
        }
        return s_rotomPhoneObjMap.get(charaId).GetWaistTranslation();
    }
}
