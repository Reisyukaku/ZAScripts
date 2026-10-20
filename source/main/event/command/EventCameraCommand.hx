package main.event.command;

import cppbindings.CDBDC1051 as CameraManager;
import cppbindings.C44E7275D as CastResult;
import cppbindings.CA915E6CD as RayCastOptionFlags;
import StdTypes.Int as RayCastOptionFlagType;
import cppbindings.Vector2Values as Vector2;
import cppbindings.Vector3Values as Vector3;
import cppbindings.CD5675BA5 as Quaternion;
import cppbindings.C2FE46DCA as BaseChrAccessor;
import cppbindings.C98FA6616 as PhysicsUtility;
import main.event.ik.command.IkScriptCommand;
import main.util.StrUtil;
import ti.Coroutine;
import cppbindings.C56DE81E7;
import cppbindings.CC8285504;

@:keep
@:chunk("main")
@:hashAbi("CA8F27C1EE584C699")
@:expose("CA8F27C1EE584C699")
class EventCameraCommand
{
    @:hashAbi("S2CA062712C8399E1")
    public static var EASY_CAM_ROT_SIDE_NORMAL:Int = 0;

    @:hashAbi("S2C7E10CED808A990")
    public static var EASY_CAM_ROT_SIDE_RIGHT:Int = 1;

    @:hashAbi("S43CB12453DDE74BF")
    public static var EASY_CAM_ROT_SIDE_LEFT:Int = 2;

    @:hashAbi("S035EE8CB644A4248")
    public static var EASY_ANY_PATTERN_TABLE:Array<{distance:Float, degree:Float, shiftPos:Vector3}> =
    [{ distance : 0.95, degree : (cast -30), shiftPos : ((lua.Table.create(([0.0, -0.03, 0.0] : Array<Float>)))) }, { distance : 0.95, degree : (cast -45), shiftPos : ((lua.Table.create(([0.0, -0.03, 0.0] : Array<Float>)))) }, { distance : 0.8, degree : (cast -45), shiftPos : ((lua.Table.create(([0.15, -0.05, 0.3] : Array<Float>)))) }, { distance : 0.95, degree : (cast 30), shiftPos : ((lua.Table.create(([0.0, -0.03, 0.0] : Array<Float>)))) }, { distance : 0.95, degree : (cast 45), shiftPos : ((lua.Table.create(([0.0, -0.03, 0.0] : Array<Float>)))) }, { distance : 0.8, degree : (cast 45), shiftPos : ((lua.Table.create(([-0.175, -0.05, 0.3] : Array<Float>)))) }, { distance : (cast 1), degree : (cast 0), shiftPos : ((lua.Table.create(([0.0, -0.04, 0.0] : Array<Float>)))) }];

    @:hashAbi("SA5DDB71F211CF628")
    public static var BEZIER_POINT_START:Vector2 = (lua.Table.create(([0.425, 0.055] : Array<Float>)));

    @:hashAbi("S664BB1613A2785B9")
    public static var BEZIER_POINT_END:Vector2 = (lua.Table.create(([0.57, 0.935] : Array<Float>)));

    @:hashAbi("S963C7B4EE0601538")
    public static function CreateEventCamera(isPush:Bool = true, isTakeOverParan:Bool = true):Bool
    {
        var camera:StdTypes.Null<cppbindings.CDBDC1051> = cppbindings.CDBDC1051.fD39408C8();
        var eventCamera:StdTypes.Null<cppbindings.C492AA19E> = camera.fBCD8CDF9();
        if ((eventCamera == null)) {
            camera.fAAE1B726();
        };
        var existed:StdTypes.Bool = (eventCamera != null);
        if ((existed && isPush)) {
            main.event.command.EventCameraCommand.Push(isTakeOverParan);
        };
        if (existed) {
            cppbindings.C56DE81E7.f6F161B59();
            cppbindings.C56DE81E7.f06384358(false);
        };
        return existed;
    }

    @:hashAbi("SB0E319FDADB5BBDD")
    public static function Push(isTakeOverParan:Bool = true):Bool
    {
        var camera:StdTypes.Null<cppbindings.CDBDC1051> = cppbindings.CDBDC1051.fD39408C8();
        var eventObject:StdTypes.Null<cppbindings.C3FB42236> = camera.fA4560435();
        if (((eventObject != null) && !main.event.command.EventCameraCommand.IsEventCameraActive())) {
            return camera.f74CDFF75(eventObject, isTakeOverParan);
        };
        return false;
    }

    @:hashAbi("SA91B082E886BFC8A")
    public static function IsEventCameraActive():Bool
    {
        var camera:StdTypes.Null<cppbindings.CDBDC1051> = cppbindings.CDBDC1051.fD39408C8();
        var eventObject:StdTypes.Null<cppbindings.C3FB42236> = camera.fA4560435();
        if ((eventObject != null)) {
            var active:StdTypes.Null<cppbindings.C3FB42236> = camera.fDD8AFBD5();
            if (((active != null) && (active == eventObject))) {
                return true;
            };
        };
        return false;
    }

    @:hashAbi("S4AB25A77C263E5BD")
    public static function Remove(isTakeOverParan:Bool = true):Dynamic
    {
        var camera:StdTypes.Null<cppbindings.CDBDC1051> = cppbindings.CDBDC1051.fD39408C8();
        var eventObject:StdTypes.Null<cppbindings.C3FB42236> = camera.fA4560435();
        return (if ((eventObject != null)) {
            camera.fE28F4F0B(eventObject, isTakeOverParan);
        } else {
            0;
        });
    }

    @:hashAbi("SA64ABBE5B55E89E0")
    public static function Wait():Dynamic
    {
        main.event.ik.command.IkScriptCommand.Suspend();
        var eventCamera:StdTypes.Null<cppbindings.C492AA19E> = cppbindings.CDBDC1051.fD39408C8().fBCD8CDF9();
        if ((eventCamera != null)) {
            while (!eventCamera.f59F55988()) {
                main.event.ik.command.IkScriptCommand.Suspend();
            };
        };
        return null;
    }

    @:hashAbi("S2E9035BDE01AB38A")
    public static function CameraMoveAngle(sec:Float, ?pos:Vector3, ?angle:Vector3, ?fov:Float, ?rollNum:Int, moving:Dynamic = 3, rotType:Int = 0, ?bezierControlPoint1:Vector2, ?bezierControlPoint2:Vector2, ?arg9:Dynamic):Dynamic
    {
        main.event.command.EventCameraCommand.Push(true);
        var eventCamera:Dynamic = cppbindings.CDBDC1051.fD39408C8().fBCD8CDF9();
        if ((eventCamera != null)) {
            if ((moving == 3)) {
                if ((bezierControlPoint1 == null)) {
                    bezierControlPoint1 = main.event.command.EventCameraCommand.BEZIER_POINT_START;
                };
                if ((bezierControlPoint2 == null)) {
                    bezierControlPoint2 = main.event.command.EventCameraCommand.BEZIER_POINT_END;
                };
            };
            main.event.ik.command.IkScriptCommand.S4A78500276697F78();
            untyped (cast eventCamera : Dynamic).f1D4AE788(sec, (if ((pos == null)) {
                null;
            } else {
                (cast pos)[1];
            }), (if ((pos == null)) {
                null;
            } else {
                (cast pos)[2];
            }), (if ((pos == null)) {
                null;
            } else {
                (cast pos)[3];
            }), (if ((angle == null)) {
                null;
            } else {
                (cast angle)[1];
            }), (if ((angle == null)) {
                null;
            } else {
                (cast angle)[2];
            }), (if ((angle == null)) {
                null;
            } else {
                (cast angle)[3];
            }), fov, rollNum, (cast(moving, StdTypes.Int)), rotType, (if ((bezierControlPoint1 == null)) {
                null;
            } else {
                (cast bezierControlPoint1)[1];
            }), (if ((bezierControlPoint1 == null)) {
                null;
            } else {
                (cast bezierControlPoint1)[2];
            }), (if ((bezierControlPoint2 == null)) {
                null;
            } else {
                (cast bezierControlPoint2)[1];
            }), (if ((bezierControlPoint2 == null)) {
                null;
            } else {
                (cast bezierControlPoint2)[2];
            }), arg9);
            cppbindings.C56DE81E7.f6F161B59();
            cppbindings.C56DE81E7.f06384358(false);
        };
        return null;
    }

    @:hashAbi("S8C0F11169DBE6865")
    public static function CameraMoveAngleFov(sec:Float, ?pos:Vector3, ?angle:Vector3, ?fov:Float, ?rollNum:Int, moving:Dynamic = 3, rotType:Int = 0, ?bezierControlPoint1:Vector2, ?bezierControlPoint2:Vector2, ?arg9:Dynamic):Dynamic
    {
        main.event.command.EventCameraCommand.Push(true);
        var eventCamera:Dynamic = cppbindings.CDBDC1051.fD39408C8().fBCD8CDF9();
        if ((eventCamera != null)) {
            if ((moving == 3)) {
                if ((bezierControlPoint1 == null)) {
                    bezierControlPoint1 = main.event.command.EventCameraCommand.BEZIER_POINT_START;
                };
                if ((bezierControlPoint2 == null)) {
                    bezierControlPoint2 = main.event.command.EventCameraCommand.BEZIER_POINT_END;
                };
            };
            main.event.ik.command.IkScriptCommand.S4A78500276697F78();
            untyped (cast eventCamera : Dynamic).f664E78E7(sec, (if ((pos == null)) {
                null;
            } else {
                (cast pos)[1];
            }), (if ((pos == null)) {
                null;
            } else {
                (cast pos)[2];
            }), (if ((pos == null)) {
                null;
            } else {
                (cast pos)[3];
            }), (if ((angle == null)) {
                null;
            } else {
                (cast angle)[1];
            }), (if ((angle == null)) {
                null;
            } else {
                (cast angle)[2];
            }), (if ((angle == null)) {
                null;
            } else {
                (cast angle)[3];
            }), fov, rollNum, (cast(moving, StdTypes.Int)), rotType, (if ((bezierControlPoint1 == null)) {
                null;
            } else {
                (cast bezierControlPoint1)[1];
            }), (if ((bezierControlPoint1 == null)) {
                null;
            } else {
                (cast bezierControlPoint1)[2];
            }), (if ((bezierControlPoint2 == null)) {
                null;
            } else {
                (cast bezierControlPoint2)[1];
            }), (if ((bezierControlPoint2 == null)) {
                null;
            } else {
                (cast bezierControlPoint2)[2];
            }), arg9);
            cppbindings.C56DE81E7.f6F161B59();
            cppbindings.C56DE81E7.f06384358(false);
        };
        return null;
    }

    @:hashAbi("SCE51B09E9A90B269")
    public static function SetEasyCameraFront(objName:String, distance:Float, angle:Float = 0.0, ?posOffset:Vector3, ?lookOffset:Vector3):Dynamic
    {
        main.event.command.EventCameraCommand.Push(true);
        var camera:StdTypes.Null<cppbindings.CDBDC1051> = cppbindings.CDBDC1051.fD39408C8();
        var eventCamera:StdTypes.Null<cppbindings.C492AA19E> = camera.fBCD8CDF9();
        if ((eventCamera == null)) {
            main.event.command.EventCameraCommand.CreateEventCamera();
            eventCamera = camera.fBCD8CDF9();
        };
        var character:cppbindings.C2FE46DCA = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        if ((character == null)) {
            return null;
        };
        var look:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = character.fD9C3CEF2("head", "default");
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
        var position:lua.Table<Int, Float> = ({
            var rhs:lua.Table<Int, Float> = ({
                var vectorValues3:lua.Table<Int, Float> = ({
                    var _this:cppbindings.CD5675BA5 = character.f64857644();
                    var v:lua.Table<Int, Float> = ((lua.Table.create(([0, 0, 1] : Array<Float>))));
                    {
                        var v:cppbindings.Vec3 = _this.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
                        {
                            var x:StdTypes.Float = v.x;
                            var y:StdTypes.Float = v.y;
                            var z:StdTypes.Float = v.z;
                            var vectorValues6:lua.Table<Int, Float>;
                            vectorValues6 = (lua.Table.create(([x, y, z] : Array<Float>)));
                            cast vectorValues6;
                        };
                    };
                });
                (lua.Table.create(([((cast (cast vectorValues3))[1] * distance), ((cast (cast vectorValues3))[2] * distance), ((cast (cast vectorValues3))[3] * distance)] : Array<Float>)));
            });
            (lua.Table.create(([((cast (cast look))[1] + (cast rhs)[1]), ((cast (cast look))[2] + (cast rhs)[2]), ((cast (cast look))[3] + (cast rhs)[3])] : Array<Float>)));
        });
        if ((eventCamera != null)) {
            main.event.ik.command.IkScriptCommand.S4A78500276697F78();
            {
                eventCamera.fDC6C9AD0((cast position)[1], (cast position)[2], (cast position)[3], (cast look)[1], (cast look)[2], (cast look)[3], distance, angle, (if ((posOffset == null)) {
                    null;
                } else {
                    (cast posOffset)[1];
                }), (if ((posOffset == null)) {
                    null;
                } else {
                    (cast posOffset)[2];
                }), (if ((posOffset == null)) {
                    null;
                } else {
                    (cast posOffset)[3];
                }), (if ((lookOffset == null)) {
                    null;
                } else {
                    (cast lookOffset)[1];
                }), (if ((lookOffset == null)) {
                    null;
                } else {
                    (cast lookOffset)[2];
                }), (if ((lookOffset == null)) {
                    null;
                } else {
                    (cast lookOffset)[3];
                }));
            };
            cppbindings.C56DE81E7.f6F161B59();
            cppbindings.C56DE81E7.f06384358(false);
        };
        return null;
    }

    @:hashAbi("S6A1F9EDC26065F73")
    public static function SetEasyCameraAnyAngle(objName:String, distance:Float, angle:Float = 0.0, ?shiftPos:Vector3, ?posOffset:Vector3, ?lookOffset:Vector3):Dynamic
    {
        main.event.command.EventCameraCommand.Push(true);
        var camera:StdTypes.Null<cppbindings.CDBDC1051> = cppbindings.CDBDC1051.fD39408C8();
        var eventCamera:StdTypes.Null<cppbindings.C492AA19E> = camera.fBCD8CDF9();
        if ((eventCamera == null)) {
            main.event.command.EventCameraCommand.CreateEventCamera();
            eventCamera = camera.fBCD8CDF9();
        };
        var character:cppbindings.C2FE46DCA = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        if ((character == null)) {
            return null;
        };
        var look:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = character.fD9C3CEF2("head", "default");
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
        var position:lua.Table<Int, Float> = ((lua.Table.create(([(cast (cast look))[1], (cast (cast look))[2], (cast (cast look))[3]] : Array<Float>))));
        var rotation:cppbindings.CD5675BA5 = ({
            var rhs:cppbindings.CD5675BA5 = character.f64857644();
            var vectorValues5:cppbindings.CD5675BA5;
            vectorValues5 = cppbindings.CD5675BA5.f7AC1FE6B(rhs);
            cast (cast vectorValues5);
        });
        var angles:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = rotation.f643B5D6F();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues6:lua.Table<Int, Float>;
                vectorValues6 = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues6);
            };
        });
        var yaw:StdTypes.Float = ((cast angles)[2] + (((angle / 360.0) * 2) * lua.Math.pi));
        rotation = cppbindings.CD5675BA5.fFA44D7AF(yaw, (cast angles)[1], (cast angles)[3]);
        position = ({
            var rhs:lua.Table<Int, Float> = ({
                var vectorValues8:lua.Table<Int, Float> = ({
                    var v:lua.Table<Int, Float> = ((lua.Table.create(([0, 0, 1] : Array<Float>))));
                    {
                        var v:cppbindings.Vec3 = rotation.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
                        {
                            var x:StdTypes.Float = v.x;
                            var y:StdTypes.Float = v.y;
                            var z:StdTypes.Float = v.z;
                            var vectorValues11:lua.Table<Int, Float>;
                            vectorValues11 = (lua.Table.create(([x, y, z] : Array<Float>)));
                            cast vectorValues11;
                        };
                    };
                });
                (lua.Table.create(([((cast (cast vectorValues8))[1] * distance), ((cast (cast vectorValues8))[2] * distance), ((cast (cast vectorValues8))[3] * distance)] : Array<Float>)));
            });
            (lua.Table.create(([((cast (cast position))[1] + (cast rhs)[1]), ((cast (cast position))[2] + (cast rhs)[2]), ((cast (cast position))[3] + (cast rhs)[3])] : Array<Float>)));
        });
        if ((shiftPos != null)) {
            var shiftX:lua.Table<Int, Float> = ({
                var vectorValues17:lua.Table<Int, Float> = ({
                    var v:lua.Table<Int, Float> = ((lua.Table.create(([1, 0, 0] : Array<Float>))));
                    {
                        var v:cppbindings.Vec3 = rotation.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
                        {
                            var x:StdTypes.Float = v.x;
                            var y:StdTypes.Float = v.y;
                            var z:StdTypes.Float = v.z;
                            var vectorValues20:lua.Table<Int, Float>;
                            vectorValues20 = (lua.Table.create(([x, y, z] : Array<Float>)));
                            cast vectorValues20;
                        };
                    };
                });
                var rhs:StdTypes.Float = (cast shiftPos)[1];
                (lua.Table.create(([((cast (cast vectorValues17))[1] * rhs), ((cast (cast vectorValues17))[2] * rhs), ((cast (cast vectorValues17))[3] * rhs)] : Array<Float>)));
            });
            var shiftY:lua.Table<Int, Float> = ({
                var vectorValues24:lua.Table<Int, Float> = ({
                    var v:lua.Table<Int, Float> = ((lua.Table.create(([0, 1, 0] : Array<Float>))));
                    {
                        var v:cppbindings.Vec3 = rotation.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
                        {
                            var x:StdTypes.Float = v.x;
                            var y:StdTypes.Float = v.y;
                            var z:StdTypes.Float = v.z;
                            var vectorValues27:lua.Table<Int, Float>;
                            vectorValues27 = (lua.Table.create(([x, y, z] : Array<Float>)));
                            cast vectorValues27;
                        };
                    };
                });
                var rhs:StdTypes.Float = (cast shiftPos)[2];
                (lua.Table.create(([((cast (cast vectorValues24))[1] * rhs), ((cast (cast vectorValues24))[2] * rhs), ((cast (cast vectorValues24))[3] * rhs)] : Array<Float>)));
            });
            var shiftZ:lua.Table<Int, Float> = ({
                var vectorValues31:lua.Table<Int, Float> = ({
                    var v:lua.Table<Int, Float> = ((lua.Table.create(([0, 0, 1] : Array<Float>))));
                    {
                        var v:cppbindings.Vec3 = rotation.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
                        {
                            var x:StdTypes.Float = v.x;
                            var y:StdTypes.Float = v.y;
                            var z:StdTypes.Float = v.z;
                            var vectorValues34:lua.Table<Int, Float>;
                            vectorValues34 = (lua.Table.create(([x, y, z] : Array<Float>)));
                            cast vectorValues34;
                        };
                    };
                });
                var rhs:StdTypes.Float = (cast shiftPos)[3];
                (lua.Table.create(([((cast (cast vectorValues31))[1] * rhs), ((cast (cast vectorValues31))[2] * rhs), ((cast (cast vectorValues31))[3] * rhs)] : Array<Float>)));
            });
            var shift:lua.Table<Int, Float> = ({
                var vectorValues38:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast shiftX))[1] + (cast shiftY)[1]), ((cast (cast shiftX))[2] + (cast shiftY)[2]), ((cast (cast shiftX))[3] + (cast shiftY)[3])] : Array<Float>))));
                (lua.Table.create(([((cast (cast vectorValues38))[1] + (cast shiftZ)[1]), ((cast (cast vectorValues38))[2] + (cast shiftZ)[2]), ((cast (cast vectorValues38))[3] + (cast shiftZ)[3])] : Array<Float>)));
            });
            position = ((lua.Table.create(([((cast (cast position))[1] + (cast shift)[1]), ((cast (cast position))[2] + (cast shift)[2]), ((cast (cast position))[3] + (cast shift)[3])] : Array<Float>))));
            look = ((lua.Table.create(([((cast (cast look))[1] + (cast shift)[1]), ((cast (cast look))[2] + (cast shift)[2]), ((cast (cast look))[3] + (cast shift)[3])] : Array<Float>))));
        };
        if ((eventCamera != null)) {
            main.event.ik.command.IkScriptCommand.S4A78500276697F78();
            {
                eventCamera.fDC6C9AD0((cast position)[1], (cast position)[2], (cast position)[3], (cast look)[1], (cast look)[2], (cast look)[3], distance, 0, (if ((posOffset == null)) {
                    null;
                } else {
                    (cast posOffset)[1];
                }), (if ((posOffset == null)) {
                    null;
                } else {
                    (cast posOffset)[2];
                }), (if ((posOffset == null)) {
                    null;
                } else {
                    (cast posOffset)[3];
                }), (if ((lookOffset == null)) {
                    null;
                } else {
                    (cast lookOffset)[1];
                }), (if ((lookOffset == null)) {
                    null;
                } else {
                    (cast lookOffset)[2];
                }), (if ((lookOffset == null)) {
                    null;
                } else {
                    (cast lookOffset)[3];
                }));
            };
            cppbindings.C56DE81E7.f6F161B59();
            cppbindings.C56DE81E7.f06384358(false);
        };
        return null;
    }

    @:hashAbi("S1420152E525ABA2F")
    public static function EasyCameraNormal(charaA:String, charaB:String, distance:Float = 2.7, angle:Float = 35.0, backOfPlayer:Bool = true, rotSide:Int = 0, lookat_ofsY:Float = 0.9, ?pos_ofs:Vector3, no_col_check:Bool = false):Dynamic
    {
        main.event.command.EventCameraCommand.Push(true);
        var characterA:cppbindings.C2FE46DCA = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(charaA);
        var characterB:cppbindings.C2FE46DCA = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(charaB);
        if (((characterA != null) && (characterB != null))) {
            var positionA:lua.Table<Int, Float> = ({
                var v:cppbindings.Vec3 = characterA.f7360ED03();
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues:lua.Table<Int, Float>;
                    vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues);
                };
            });
            var positionB:lua.Table<Int, Float> = ({
                var v:cppbindings.Vec3 = characterB.f7360ED03();
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues3:lua.Table<Int, Float>;
                    vectorValues3 = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues3);
                };
            });
            main.event.command.EventCameraCommand.EasyCameraBasePos(positionA, positionB, distance, angle, backOfPlayer, rotSide, lookat_ofsY, pos_ofs, no_col_check);
        };
        return null;
    }

    @:hashAbi("SE29389D94D7EC89E")
    public static function CameraMoveTarget(duration:Float, look:Vector3, cameraRot:Quaternion, distance:Float, height:Float, ?posOffset:Vector3, moving:Dynamic = 3, rotType:Int = 0):Dynamic
    {
        main.event.command.EventCameraCommand.Push(true);
        var camera:StdTypes.Null<cppbindings.CDBDC1051> = cppbindings.CDBDC1051.fD39408C8();
        var eventCamera:Dynamic = camera.fBCD8CDF9();
        if ((eventCamera == null)) {
            main.event.command.EventCameraCommand.CreateEventCamera();
            eventCamera = camera.fBCD8CDF9();
        };
        var position:lua.Table<Int, Float> = ((lua.Table.create(([(cast look)[1], (cast look)[2], (cast look)[3]] : Array<Float>))));
        position = ({
            var rhs:lua.Table<Int, Float> = ({
                var vectorValues3:lua.Table<Int, Float> = ({
                    var v:lua.Table<Int, Float> = ((lua.Table.create(([0, 0, -1] : Array<Float>))));
                    {
                        var v:cppbindings.Vec3 = cameraRot.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
                        {
                            var x:StdTypes.Float = v.x;
                            var y:StdTypes.Float = v.y;
                            var z:StdTypes.Float = v.z;
                            var vectorValues6:lua.Table<Int, Float>;
                            vectorValues6 = (lua.Table.create(([x, y, z] : Array<Float>)));
                            cast vectorValues6;
                        };
                    };
                });
                (lua.Table.create(([((cast (cast vectorValues3))[1] * distance), ((cast (cast vectorValues3))[2] * distance), ((cast (cast vectorValues3))[3] * distance)] : Array<Float>)));
            });
            (lua.Table.create(([((cast (cast position))[1] + (cast rhs)[1]), ((cast (cast position))[2] + (cast rhs)[2]), ((cast (cast position))[3] + (cast rhs)[3])] : Array<Float>)));
        });
        position = ({
            var rhs:lua.Table<Int, Float> = ({
                var vectorValues12:lua.Table<Int, Float> = ({
                    var v:lua.Table<Int, Float> = ((lua.Table.create(([0, 1, 0] : Array<Float>))));
                    {
                        var v:cppbindings.Vec3 = cameraRot.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
                        {
                            var x:StdTypes.Float = v.x;
                            var y:StdTypes.Float = v.y;
                            var z:StdTypes.Float = v.z;
                            var vectorValues15:lua.Table<Int, Float>;
                            vectorValues15 = (lua.Table.create(([x, y, z] : Array<Float>)));
                            cast vectorValues15;
                        };
                    };
                });
                (lua.Table.create(([((cast (cast vectorValues12))[1] * height), ((cast (cast vectorValues12))[2] * height), ((cast (cast vectorValues12))[3] * height)] : Array<Float>)));
            });
            (lua.Table.create(([((cast (cast position))[1] + (cast rhs)[1]), ((cast (cast position))[2] + (cast rhs)[2]), ((cast (cast position))[3] + (cast rhs)[3])] : Array<Float>)));
        });
        if ((eventCamera != null)) {
            var lookDistance:StdTypes.Float = cppbindings.C7A48E3FC.f38BA082F((cast look)[1], (cast look)[2], (cast look)[3], (cast position)[1], (cast position)[2], (cast position)[3]);
            untyped (cast eventCamera : Dynamic).fE4F829F1(duration, (cast position)[1], (cast position)[2], (cast position)[3], (cast look)[1], (cast look)[2], (cast look)[3], lookDistance, (if ((posOffset == null)) {
                null;
            } else {
                (cast posOffset)[1];
            }), (if ((posOffset == null)) {
                null;
            } else {
                (cast posOffset)[2];
            }), (if ((posOffset == null)) {
                null;
            } else {
                (cast posOffset)[3];
            }), (cast(moving, StdTypes.Int)), rotType);
            main.event.ik.command.IkScriptCommand.S4A78500276697F78();
            cppbindings.C56DE81E7.f6F161B59();
            cppbindings.C56DE81E7.f06384358(false);
        };
        return null;
    }

    @:hashAbi("S5AA41557873FBB62")
    public static function CameraMoveTargetHorizontal(duration:Float, look:Vector3, cameraRot:Quaternion, distance:Float, height:Float, ?posOffset:Vector3, ?degreeOffset:Vector3, moving:Dynamic = 3, rotType:Int = 0):Dynamic
    {
        main.event.command.EventCameraCommand.Push(true);
        var camera:StdTypes.Null<cppbindings.CDBDC1051> = cppbindings.CDBDC1051.fD39408C8();
        var eventCamera:Dynamic = camera.fBCD8CDF9();
        if ((eventCamera == null)) {
            main.event.command.EventCameraCommand.CreateEventCamera();
            eventCamera = camera.fBCD8CDF9();
        };
        var position:lua.Table<Int, Float> = ((lua.Table.create(([(cast look)[1], (cast look)[2], (cast look)[3]] : Array<Float>))));
        position = ({
            var rhs:lua.Table<Int, Float> = ({
                var vectorValues3:lua.Table<Int, Float> = ({
                    var v:lua.Table<Int, Float> = ((lua.Table.create(([0, 0, -1] : Array<Float>))));
                    {
                        var v:cppbindings.Vec3 = cameraRot.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
                        {
                            var x:StdTypes.Float = v.x;
                            var y:StdTypes.Float = v.y;
                            var z:StdTypes.Float = v.z;
                            var vectorValues6:lua.Table<Int, Float>;
                            vectorValues6 = (lua.Table.create(([x, y, z] : Array<Float>)));
                            cast vectorValues6;
                        };
                    };
                });
                (lua.Table.create(([((cast (cast vectorValues3))[1] * distance), ((cast (cast vectorValues3))[2] * distance), ((cast (cast vectorValues3))[3] * distance)] : Array<Float>)));
            });
            (lua.Table.create(([((cast (cast position))[1] + (cast rhs)[1]), ((cast (cast position))[2] + (cast rhs)[2]), ((cast (cast position))[3] + (cast rhs)[3])] : Array<Float>)));
        });
        position = ({
            var rhs:lua.Table<Int, Float> = ({
                var vectorValues12:lua.Table<Int, Float> = ({
                    var v:lua.Table<Int, Float> = ((lua.Table.create(([0, 1, 0] : Array<Float>))));
                    {
                        var v:cppbindings.Vec3 = cameraRot.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
                        {
                            var x:StdTypes.Float = v.x;
                            var y:StdTypes.Float = v.y;
                            var z:StdTypes.Float = v.z;
                            var vectorValues15:lua.Table<Int, Float>;
                            vectorValues15 = (lua.Table.create(([x, y, z] : Array<Float>)));
                            cast vectorValues15;
                        };
                    };
                });
                (lua.Table.create(([((cast (cast vectorValues12))[1] * height), ((cast (cast vectorValues12))[2] * height), ((cast (cast vectorValues12))[3] * height)] : Array<Float>)));
            });
            (lua.Table.create(([((cast (cast position))[1] + (cast rhs)[1]), ((cast (cast position))[2] + (cast rhs)[2]), ((cast (cast position))[3] + (cast rhs)[3])] : Array<Float>)));
        });
        if ((eventCamera != null)) {
            var lookDistance:StdTypes.Float = cppbindings.C7A48E3FC.f38BA082F((cast look)[1], (cast look)[2], (cast look)[3], (cast position)[1], (cast position)[2], (cast position)[3]);
            untyped (cast eventCamera : Dynamic).f16E3593A(duration, (cast position)[1], (cast position)[2], (cast position)[3], (cast look)[1], (cast look)[2], (cast look)[3], lookDistance, (if ((posOffset == null)) {
                null;
            } else {
                (cast posOffset)[1];
            }), (if ((posOffset == null)) {
                null;
            } else {
                (cast posOffset)[2];
            }), (if ((posOffset == null)) {
                null;
            } else {
                (cast posOffset)[3];
            }), (if ((degreeOffset == null)) {
                null;
            } else {
                (cast degreeOffset)[1];
            }), (if ((degreeOffset == null)) {
                null;
            } else {
                (cast degreeOffset)[2];
            }), (if ((degreeOffset == null)) {
                null;
            } else {
                (cast degreeOffset)[3];
            }), (cast(moving, StdTypes.Int)), rotType);
            main.event.ik.command.IkScriptCommand.S4A78500276697F78();
            cppbindings.C56DE81E7.f6F161B59();
            cppbindings.C56DE81E7.f06384358(false);
        };
        return null;
    }

    @:hashAbi("S0AB827332734FF0D")
    public static function EasyCameraBasePos(posA:Vector3, posB:Vector3, distance:Float = 1.8, angle:Float = 30.0, backOfPlayer:Bool = true, rotSide:Int = 0, lookat_ofsY:Float = 0.9, ?pos_ofs:Vector3, skip_colcheck:Bool = false):Dynamic
    {
        if ((pos_ofs == null)) {
            pos_ofs = ((lua.Table.create(([0, 1.3, 0] : Array<Float>))));
        };
        main.event.command.EventCameraCommand.Push(true);
        var difference:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast posA))[1] - (cast posB)[1]), ((cast (cast posA))[2] - (cast posB)[2]), ((cast (cast posA))[3] - (cast posB)[3])] : Array<Float>))));
        var radians:StdTypes.Float = (lua.Math.pi * (angle / 180));
        var totalLength:StdTypes.Float = (cppbindings.C7A48E3FC.f92852F73((cast (cast difference))[1], (cast (cast difference))[2], (cast (cast difference))[3]) + distance);
        var extensionPosition:StdTypes.Bool -> lua.Table<Int, Float> = function(behindPlayer:StdTypes.Bool):lua.Table<Int, Float> {
            if (behindPlayer) {
                return ({
                    var x:StdTypes.Float = (((totalLength * (cast posA)[1]) - (distance * (cast posB)[1])) / cppbindings.C7A48E3FC.f92852F73((cast (cast difference))[1], (cast (cast difference))[2], (cast (cast difference))[3]));
                    var z:StdTypes.Float = (((totalLength * (cast posA)[3]) - (distance * (cast posB)[3])) / cppbindings.C7A48E3FC.f92852F73((cast (cast difference))[1], (cast (cast difference))[2], (cast (cast difference))[3]));
                    var vectorValues5:lua.Table<Int, Float>;
                    vectorValues5 = (lua.Table.create(([x, 0, z] : Array<Float>)));
                    cast (cast vectorValues5);
                });
            };
            return ({
                var x:StdTypes.Float = (((totalLength * (cast posB)[1]) - (distance * (cast posA)[1])) / cppbindings.C7A48E3FC.f92852F73((cast (cast difference))[1], (cast (cast difference))[2], (cast (cast difference))[3]));
                var z:StdTypes.Float = (((totalLength * (cast posB)[3]) - (distance * (cast posA)[3])) / cppbindings.C7A48E3FC.f92852F73((cast (cast difference))[1], (cast (cast difference))[2], (cast (cast difference))[3]));
                var vectorValues7:lua.Table<Int, Float>;
                vectorValues7 = (lua.Table.create(([x, 0, z] : Array<Float>)));
                cast (cast vectorValues7);
            });
        };
        var extendedPosition:lua.Table<Int, Float> = extensionPosition(backOfPlayer);
        ti.Coroutine.yield();
        var camera:StdTypes.Null<cppbindings.CDBDC1051> = cppbindings.CDBDC1051.fD39408C8();
        if ((rotSide == 2)) {
            radians *= -1.0;
        } else {
            if ((rotSide != 1)) {
                var cameraPosition:lua.Table<Int, Float> = ({
                    var _this:StdTypes.Null<cppbindings.C3FB42236> = camera.fDD8AFBD5();
                    {
                        var v:cppbindings.Vec3 = _this.f7360ED03();
                        {
                            var x:StdTypes.Float = v.x;
                            var y:StdTypes.Float = v.y;
                            var z:StdTypes.Float = v.z;
                            var vectorValues9:lua.Table<Int, Float>;
                            vectorValues9 = (lua.Table.create(([x, y, z] : Array<Float>)));
                            cast (cast vectorValues9);
                        };
                    };
                });
                var cameraDX:StdTypes.Float = ((cast cameraPosition)[1] - (cast posB)[1]);
                var cameraDZ:StdTypes.Float = ((cast cameraPosition)[3] - (cast posB)[3]);
                var currentSide:StdTypes.Float = (((cast difference)[1] * cameraDZ) - ((cast difference)[3] * cameraDX));
                if (!(currentSide < 0)) {
                    radians *= -1.0;
                };
            };
        };
        var calculateShift:(cppbindings.CD5675BA5, lua.Table<Int, Float>) -> lua.Table<Int, Float> = function(rotation:cppbindings.CD5675BA5, offset:lua.Table<Int, Float>):lua.Table<Int, Float> {
            var shiftX:lua.Table<Int, Float> = ({
                var v:lua.Table<Int, Float> = ((lua.Table.create(([1, 0, 0] : Array<Float>))));
                {
                    var v:cppbindings.Vec3 = rotation.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
                    {
                        var x:StdTypes.Float = v.x;
                        var y:StdTypes.Float = v.y;
                        var z:StdTypes.Float = v.z;
                        var vectorValues13:lua.Table<Int, Float>;
                        vectorValues13 = (lua.Table.create(([x, y, z] : Array<Float>)));
                        cast (cast vectorValues13);
                    };
                };
            });
            (cast shiftX)[2] = 0;
            {
                var ret:lua.Table<Int, Float> = ({
                    var v:cppbindings.Vec3 = cppbindings.C7A48E3FC.fD9D3C136((cast (cast shiftX))[1], (cast (cast shiftX))[2], (cast (cast shiftX))[3]);
                    {
                        var x:StdTypes.Float = v.x;
                        var y:StdTypes.Float = v.y;
                        var z:StdTypes.Float = v.z;
                        var vectorValues15:lua.Table<Int, Float>;
                        vectorValues15 = (lua.Table.create(([x, y, z] : Array<Float>)));
                        cast (cast vectorValues15);
                    };
                });
                (cast (cast shiftX))[1] = (cast ret)[1];
                (cast (cast shiftX))[2] = (cast ret)[2];
                (cast (cast shiftX))[3] = (cast ret)[3];
                cppbindings.C7A48E3FC.fBD92E0EC((cast (cast (cast shiftX)))[1], (cast (cast (cast shiftX)))[2], (cast (cast (cast shiftX)))[3]) > 0.0;
            };
            shiftX = ({
                var rhs:StdTypes.Float = (cast offset)[1];
                (lua.Table.create(([((cast (cast shiftX))[1] * rhs), ((cast (cast shiftX))[2] * rhs), ((cast (cast shiftX))[3] * rhs)] : Array<Float>)));
            });
            var offsetY:StdTypes.Float = (cast offset)[2];
            var shiftZ:lua.Table<Int, Float> = ({
                var v:lua.Table<Int, Float> = ((lua.Table.create(([0, 0, -1] : Array<Float>))));
                {
                    var v:cppbindings.Vec3 = rotation.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
                    {
                        var x:StdTypes.Float = v.x;
                        var y:StdTypes.Float = v.y;
                        var z:StdTypes.Float = v.z;
                        var vectorValues21:lua.Table<Int, Float>;
                        vectorValues21 = (lua.Table.create(([x, y, z] : Array<Float>)));
                        cast (cast vectorValues21);
                    };
                };
            });
            (cast shiftZ)[2] = 0;
            {
                var ret:lua.Table<Int, Float> = ({
                    var v:cppbindings.Vec3 = cppbindings.C7A48E3FC.fD9D3C136((cast (cast shiftZ))[1], (cast (cast shiftZ))[2], (cast (cast shiftZ))[3]);
                    {
                        var x:StdTypes.Float = v.x;
                        var y:StdTypes.Float = v.y;
                        var z:StdTypes.Float = v.z;
                        var vectorValues23:lua.Table<Int, Float>;
                        vectorValues23 = (lua.Table.create(([x, y, z] : Array<Float>)));
                        cast (cast vectorValues23);
                    };
                });
                (cast (cast shiftZ))[1] = (cast ret)[1];
                (cast (cast shiftZ))[2] = (cast ret)[2];
                (cast (cast shiftZ))[3] = (cast ret)[3];
                cppbindings.C7A48E3FC.fBD92E0EC((cast (cast (cast shiftZ)))[1], (cast (cast (cast shiftZ)))[2], (cast (cast (cast shiftZ)))[3]) > 0.0;
            };
            shiftZ = ({
                var rhs:StdTypes.Float = (cast offset)[3];
                (lua.Table.create(([((cast (cast shiftZ))[1] * rhs), ((cast (cast shiftZ))[2] * rhs), ((cast (cast shiftZ))[3] * rhs)] : Array<Float>)));
            });
            return ((lua.Table.create(([((cast shiftX)[1] + (cast shiftZ)[1]), (((cast shiftX)[2] + offsetY) + (cast shiftZ)[2]), ((cast shiftX)[3] + (cast shiftZ)[3])] : Array<Float>))));
        };
        var rotatePosition:(StdTypes.Float, lua.Table<Int, Float>) -> lua.Table<Int, Float> = function(radian:StdTypes.Float, position:lua.Table<Int, Float>):lua.Table<Int, Float> {
            return ({
                var x:StdTypes.Float = (((lua.Math.cos(radian) * ((cast position)[1] - (cast posB)[1])) - (lua.Math.sin(radian) * ((cast position)[3] - (cast posB)[3]))) + (cast posB)[1]);
                var z:StdTypes.Float = (((lua.Math.sin(radian) * ((cast position)[1] - (cast posB)[1])) + (lua.Math.cos(radian) * ((cast position)[3] - (cast posB)[3]))) + (cast posB)[3]);
                var vectorValues29:lua.Table<Int, Float>;
                vectorValues29 = (lua.Table.create(([x, 0, z] : Array<Float>)));
                cast (cast vectorValues29);
            });
        };
        var reference:lua.Table<Int, Float> = ((lua.Table.create(([(((cast posA)[1] + (cast posB)[1]) / 2), ((((cast posA)[2] + (cast posB)[2]) / 2) + lookat_ofsY), (((cast posA)[3] + (cast posB)[3]) / 2)] : Array<Float>))));
        var ignoreFlags:cppbindings.CA915E6CD = ({
            var vectorValues33:cppbindings.CA915E6CD;
            vectorValues33 = cppbindings.CA915E6CD.f7AC1FE6B((cast 8));
            cast (cast vectorValues33);
        });
        ignoreFlags.fC71B3CED(({
            var vectorValues34:cppbindings.CA915E6CD;
            vectorValues34 = cppbindings.CA915E6CD.f7AC1FE6B((cast 2));
            cast (cast vectorValues34);
        }));
        var isHit:lua.Table<Int, Float> -> StdTypes.Bool = function(destination:lua.Table<Int, Float>):StdTypes.Bool {
            var result:cppbindings.C44E7275D = cppbindings.C44E7275D.f101D811F();
            var direction:lua.Table<Int, Float> = ({
                var rhs:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast destination))[1] - (cast reference)[1]), ((cast (cast destination))[2] - (cast reference)[2]), ((cast (cast destination))[3] - (cast reference)[3])] : Array<Float>))));
                {
                    var v:cppbindings.Vec3 = cppbindings.C7A48E3FC.fD9D3C136((cast rhs)[1], (cast rhs)[2], (cast rhs)[3]);
                    {
                        var x:StdTypes.Float = v.x;
                        var y:StdTypes.Float = v.y;
                        var z:StdTypes.Float = v.z;
                        var vectorValues37:lua.Table<Int, Float>;
                        vectorValues37 = (lua.Table.create(([x, y, z] : Array<Float>)));
                        cast (cast vectorValues37);
                    };
                };
            });
            var endPosition:lua.Table<Int, Float> = ({
                var vectorValues39:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast direction))[1] * 0.5), ((cast (cast direction))[2] * 0.5), ((cast (cast direction))[3] * 0.5)] : Array<Float>))));
                (lua.Table.create(([((cast (cast vectorValues39))[1] + (cast destination)[1]), ((cast (cast vectorValues39))[2] + (cast destination)[2]), ((cast (cast vectorValues39))[3] + (cast destination)[3])] : Array<Float>)));
            });
            main.util.StrUtil.FormatVec3((cast reference));
            main.util.StrUtil.FormatVec3((cast destination));
            main.util.StrUtil.FormatVec3((cast endPosition));
            return ({
                var count:StdTypes.Int = 1;
                var option:StdTypes.Null<cppbindings.CA915E6CD> = ignoreFlags;
                if ((count == null)) count = 1;
                if ((option == null)) {
                    option = (cast ({
                        var vectorValues44:cppbindings.CA915E6CD;
                        vectorValues44 = cppbindings.CA915E6CD.f0DC6CEFD();
                        cast (cast vectorValues44);
                    }));
                };
                cppbindings.C98FA6616.fD324515F(result, (cast reference)[1], (cast reference)[2], (cast reference)[3], (cast endPosition)[1], (cast endPosition)[2], (cast endPosition)[3], count, (cast (cast option)), function(_:cppbindings.CA877D16F):StdTypes.Bool {
                    return true;
                });
            });
        };
        var basePosition:lua.Table<Int, Float> = extendedPosition;
        {
            var arrayIndex:StdTypes.Int = 0;
            while ((arrayIndex < 4)) {
                var attempt:StdTypes.Int = arrayIndex++;
                var rotated:lua.Table<Int, Float> = rotatePosition(radians, basePosition);
                var cameraPosition:lua.Table<Int, Float> = ((lua.Table.create(([(cast rotated)[1], (cast posB)[2], (cast rotated)[3]] : Array<Float>))));
                var rotation:cppbindings.CD5675BA5 = cppbindings.CC8285504.f9AB356BF((cast reference)[1], (cast reference)[2], (cast reference)[3], (cast cameraPosition)[1], (cast cameraPosition)[2], (cast cameraPosition)[3], 0);
                var shift:lua.Table<Int, Float> = calculateShift(rotation, pos_ofs);
                if (!skip_colcheck) {
                    if (isHit(((lua.Table.create(([((cast (cast cameraPosition))[1] + (cast shift)[1]), ((cast (cast cameraPosition))[2] + (cast shift)[2]), ((cast (cast cameraPosition))[3] + (cast shift)[3])] : Array<Float>)))))) {
                        shift = calculateShift(rotation, pos_ofs);
                        main.util.StrUtil.FormatVec3((cast ((lua.Table.create(([((cast (cast cameraPosition))[1] + (cast shift)[1]), ((cast (cast cameraPosition))[2] + (cast shift)[2]), ((cast (cast cameraPosition))[3] + (cast shift)[3])] : Array<Float>))))));
                        main.util.StrUtil.FormatVec3((cast ((lua.Table.create(([((cast reference)[1] + (cast shift)[1]), (cast reference)[2], ((cast reference)[3] + (cast shift)[3])] : Array<Float>))))));
                        @:ast(switch (attempt) {
                            case 0, 2:{
                                radians *= -1.0;
                            };
                            case 1:{
                                radians *= -1.0;
                                basePosition = extensionPosition(!backOfPlayer);
                            };
                            default:
                        }) switch attempt {
                            case 1:{
                                {
                                    radians *= -1.0;
                                    basePosition = extensionPosition(!backOfPlayer);
                                };
                            };
                            case 0, 2:{
                                {
                                    radians *= -1.0;
                                };
                            };
                            default:{ };
                        };
                    };
                } else {
                    shift = calculateShift(rotation, pos_ofs);
                    var eventCamera:StdTypes.Null<cppbindings.C492AA19E> = camera.fBCD8CDF9();
                    if ((eventCamera != null)) {
                        main.event.ik.command.IkScriptCommand.S4A78500276697F78();
                        {
                            var pos:lua.Table<Int, Float> = ((lua.Table.create(([((cast (cast cameraPosition))[1] + (cast shift)[1]), ((cast (cast cameraPosition))[2] + (cast shift)[2]), ((cast (cast cameraPosition))[3] + (cast shift)[3])] : Array<Float>))));
                            var look:lua.Table<Int, Float> = ((lua.Table.create(([((cast reference)[1] + (cast shift)[1]), (cast reference)[2], ((cast reference)[3] + (cast shift)[3])] : Array<Float>))));
                            eventCamera.f1934B8B7((cast pos)[1], (cast pos)[2], (cast pos)[3], (cast look)[1], (cast look)[2], (cast look)[3]);
                        };
                        cppbindings.C56DE81E7.f6F161B59();
                        cppbindings.C56DE81E7.f06384358(false);
                    };
                    main.event.command.EventCameraCommand.Wait();
                    break;
                };
            };
        };
        return null;
    }

    @:hashAbi("S539DCEBCEE62A812")
    public static function CameraEasingDrawArcAroundGazePointMove(sec:Float, pos:Vector3):Dynamic
    {
        main.event.command.EventCameraCommand.Push(true);
        var camera:StdTypes.Null<cppbindings.CDBDC1051> = cppbindings.CDBDC1051.fD39408C8();
        var eventCamera:StdTypes.Null<cppbindings.C492AA19E> = camera.fBCD8CDF9();
        if ((eventCamera == null)) {
            camera.fAAE1B726();
            eventCamera = camera.fBCD8CDF9();
        };
        if ((eventCamera != null)) {
            main.event.ik.command.IkScriptCommand.S4A78500276697F78();
            {
                eventCamera.f8D12796B(sec, (cast pos)[1], (cast pos)[2], (cast pos)[3]);
            };
            cppbindings.C56DE81E7.f6F161B59();
            cppbindings.C56DE81E7.f06384358(false);
        };
        return null;
    }

    @:hashAbi("S8108408E56E3C7B6")
    public static function StartCameraShake(?initData:Dynamic):Dynamic
    {
        main.event.command.EventCameraCommand.Push(true);
        var camera:StdTypes.Null<cppbindings.CDBDC1051> = cppbindings.CDBDC1051.fD39408C8();
        var eventCamera:Dynamic = camera.fBCD8CDF9();
        if ((eventCamera == null)) {
            camera.fAAE1B726();
            eventCamera = camera.fBCD8CDF9();
        };
        main.event.ik.command.IkScriptCommand.S4A78500276697F78();
        untyped (cast eventCamera : Dynamic).fCCE0706F(initData);
        cppbindings.C56DE81E7.f6F161B59();
        cppbindings.C56DE81E7.f06384358(false);
        return null;
    }

    @:hashAbi("S7AF5ADF99416E58F")
    public static function UpdateCameraShake(?updateData:Dynamic):Dynamic
    {
        var eventCamera:Dynamic = cppbindings.CDBDC1051.fD39408C8().fBCD8CDF9();
        untyped (cast eventCamera : Dynamic).fB145C64A(updateData);
        cppbindings.C56DE81E7.f6F161B59();
        cppbindings.C56DE81E7.f06384358(false);
        return null;
    }

    @:hashAbi("S0F7A0C47380248D9")
    public static function IsEndCameraShake():Dynamic
    {
        var eventCamera:Dynamic = cppbindings.CDBDC1051.fD39408C8().fBCD8CDF9();
        return untyped (cast eventCamera : Dynamic).f9FC51175();
    }
}
