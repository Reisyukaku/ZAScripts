package main.event.ik.command;

import cppbindings.CBA58795C as EventMessageWindow;
import StdTypes.Int as MessageType;
import StdTypes.Int as ResidentMessageWindowType;

@:keep
@:chunk("main")
@:hashAbi("CF7A6AE6DC82DBBB3")
@:expose("CF7A6AE6DC82DBBB3")
class MessageWindowCommand
{
    @:hashAbi("S62564229FADE24E1")
    public static function ShowTalkMessage(?npcId:Dynamic, ?label:Dynamic, ?mstxt:Dynamic, ?isLoud:Dynamic, ?isLargeText:Dynamic, ?isAutoClose:Dynamic, ?closeTime:Dynamic):Dynamic
    {
        var talkType:StdTypes.Int = (cast 0);
        var input:StdTypes.Int = (cast 0);
        var timeoutSec:StdTypes.Float = 3.0;
        if ((null == closeTime)) {
            closeTime = 3.0;
        };
        if ((null == isAutoClose)) {
            isAutoClose = false;
        };
        var windowType:Dynamic = 0;
        if (isLoud) {
            talkType = (cast 1);
        };
        if (isLargeText) {
            windowType = 5;
        };
        if (isAutoClose) {
            input = (cast 2);
            timeoutSec = closeTime;
        };
        cppbindings.CBA58795C.f2F420381(mstxt, label, input, isAutoClose, true, true, 0.0, timeoutSec, "", "", windowType, talkType);
        return null;
    }

    @:hashAbi("S6BD3B70E1664C014")
    public static function ShowSystemMessage(?label:Dynamic, ?mstxt:Dynamic, ?isAutoClose:Dynamic, ?closeTime:Dynamic):Dynamic
    {
        var input:StdTypes.Int = (cast 0);
        var timeoutSec:StdTypes.Float = 3.0;
        if ((null == closeTime)) {
            closeTime = 0.0;
        };
        if ((null == isAutoClose)) {
            isAutoClose = false;
        };
        if (isAutoClose) {
            input = (cast 2);
            timeoutSec = closeTime;
        };
        cppbindings.CBA58795C.f2F420381(mstxt, label, input, isAutoClose, true, true, 0.0, timeoutSec, null, null, (cast 0), (cast 2));
        return null;
    }

    @:hashAbi("S2F163DA2464F4AB1")
    public static function ShowTransceiverMessage(?npcId:Dynamic, ?label:Dynamic, ?mstxt:Dynamic, ?isLoud:Dynamic, ?isLargeText:Dynamic, ?isAutoClose:Dynamic, ?closeTime:Dynamic):Dynamic
    {
        var talkType:StdTypes.Int = (cast 0);
        var input:StdTypes.Int = (cast 0);
        var timeoutSec:StdTypes.Float = 3.0;
        if ((null == closeTime)) {
            closeTime = 3.0;
        };
        if ((null == isAutoClose)) {
            isAutoClose = false;
        };
        var windowType:Dynamic = 1;
        if (isLoud) {
            talkType = (cast 1);
        };
        if (isLargeText) {
            windowType = 6;
        };
        if (isAutoClose) {
            input = (cast 2);
            timeoutSec = closeTime;
        };
        cppbindings.CBA58795C.f2F420381(mstxt, label, input, isAutoClose, true, true, 0.0, timeoutSec, "", "", windowType, talkType);
        return null;
    }

    @:hashAbi("S21F0939E49481A1A")
    public static function ShowDemoMessage(?npcId:Dynamic, ?label:Dynamic, ?mstxt:Dynamic):Dynamic
    {
        cppbindings.CBA58795C.f2F420381(mstxt, label, (cast 0), false, true, true, 0.0, 3.0, "", "", (cast 2), (cast 0));
        return null;
    }

    @:hashAbi("S6B48CAC1DCE49B4F")
    public static function ShowHoloTypeMessage(?npcId:Dynamic, ?label:Dynamic, ?mstxt:Dynamic, ?isLoud:Dynamic, ?isLargeText:Dynamic, ?isAutoClose:Dynamic, ?closeTime:Dynamic):Dynamic
    {
        var talkType:StdTypes.Int = (cast 0);
        var input:StdTypes.Int = (cast 0);
        var timeoutSec:StdTypes.Float = 3.0;
        if ((null == closeTime)) {
            closeTime = 3.0;
        };
        if ((null == isAutoClose)) {
            isAutoClose = false;
        };
        var windowType:Dynamic = 4;
        if (isLoud) {
            talkType = (cast 1);
        };
        if (isLargeText) {
            windowType = 7;
        };
        if (isAutoClose) {
            input = (cast 2);
            timeoutSec = closeTime;
        };
        cppbindings.CBA58795C.f2F420381(mstxt, label, input, isAutoClose, true, true, 0.0, timeoutSec, "", "", windowType, talkType);
        return null;
    }
}
