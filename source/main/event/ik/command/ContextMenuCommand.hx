package main.event.ik.command;

import cppbindings.C37BF542A as EventContextMenu;
import cppbindings.C37BF542A;

@:keep
@:chunk("main")
@:hashAbi("C06C3AE6BF7EA3106")
@:expose("C06C3AE6BF7EA3106")
class ContextMenuCommand
{
    @:hashAbi("SE7DF6B33D8D02225")
    public static function ShowTalkContext(?labelArray:Array<String>, ?mstxt:String, ?cursorIndex:Int, ?isEnableCancel:Bool, ?isBasePosKindMode:Bool, ?basePos:Dynamic, ?windowType:Dynamic):Dynamic
    {
        cppbindings.C37BF542A.f806CA809();
        {
            var arrayIndex:StdTypes.Int = 0;
            while ((arrayIndex < labelArray.length)) {
                var label:String = labelArray[arrayIndex];
                ++arrayIndex;
                cppbindings.C37BF542A.f0FC6D396(label);
            };
        };
        cppbindings.C37BF542A.f60894E84(mstxt, cursorIndex, isEnableCancel, true, isBasePosKindMode, basePos, windowType);
        return null;
    }

    @:hashAbi("SB7F6DAEECBDBD1CF")
    public static function ShowTalkContextWithTag(?items:Array<ContextItemWithTag>, ?mstxt:String, ?cursorIndex:Int, ?isEnableCancel:Bool, ?isBasePosKindMode:Bool, ?basePos:Dynamic, ?windowType:Dynamic):Dynamic
    {
        cppbindings.C37BF542A.f806CA809();
        {
            var arrayIndex:StdTypes.Int = 0;
            while ((arrayIndex < items.length)) {
                var item:main.event.ik.command.ContextItemWithTag = items[arrayIndex];
                ++arrayIndex;
                var useText:StdTypes.Null<String> = (if ((item.mstxt == "")) {
                    mstxt;
                } else {
                    item.mstxt;
                });
                main.event.ik.command.IkScriptCommand.IsLabelTextExist(mstxt, item.label);
                @:ast(switch (item.type) {
                    case 0:{
                        C37BF542A.f26211675(item.bufId, useText, item.label);
                    };
                    case 1:{
                        C37BF542A.f17E984AB(useText, item.label);
                    };
                    case 2:{
                        C37BF542A.fE2BE8E63(item.bufId, useText, item.label);
                    };
                    case 3:{
                        C37BF542A.f8ABD7CD3(item.bufId, useText, item.label, item.wazaId);
                    };
                    case 4:{
                        C37BF542A.fCB6B9F3A(item.bufId, useText, item.label, item.number, item.digit, item.dispType, item.codeType);
                    };
                    case 5:{
                        var count = item.number;
                        if (count == null) {
                            count = 1;
                        };
                        C37BF542A.f37B68345(item.bufId, useText, item.label, item.itemId, count);
                    };
                }) {
                    var arrayIndex2:StdTypes.Int = item.type;
                    switch arrayIndex2 {
                        case 0:{
                            {
                                cppbindings.C37BF542A.f26211675(item.bufId, useText, item.label);
                            };
                        };
                        case 1:{
                            {
                                cppbindings.C37BF542A.f17E984AB(useText, item.label);
                            };
                        };
                        case 2:{
                            {
                                cppbindings.C37BF542A.fE2BE8E63(item.bufId, useText, item.label);
                            };
                        };
                        case 3:{
                            {
                                cppbindings.C37BF542A.f8ABD7CD3(item.bufId, useText, item.label, item.wazaId);
                            };
                        };
                        case 4:{
                            {
                                cppbindings.C37BF542A.fCB6B9F3A(item.bufId, useText, item.label, item.number, item.digit, item.dispType, item.codeType);
                            };
                        };
                        case 5:{
                            {
                                var count:StdTypes.Null<StdTypes.Int> = item.number;
                                if ((count == null)) {
                                    count = 1;
                                };
                                cppbindings.C37BF542A.f37B68345(item.bufId, useText, item.label, item.itemId, count);
                            };
                        };
                    };
                };
            };
        };
        cppbindings.C37BF542A.f60894E84(mstxt, cursorIndex, isEnableCancel, true, isBasePosKindMode, basePos, windowType);
        return null;
    }
}
