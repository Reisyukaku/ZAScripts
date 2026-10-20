package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C2631A7D2F5BDF95C")
@:expose("C2631A7D2F5BDF95C")
class Ev_sys_kaseki extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub030_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub030_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub030_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub030_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub030_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var textResourcePath = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/fossil");
        main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await(function():Dynamic
        {
            return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        });
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_fossil_01", "fossil", "npc_sub030_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var running = true;
        var hasVacancy:Dynamic = false;
        var labels = new Array<Dynamic>();
        var itemIds = new Array<Dynamic>();
        var restorationIds = new Array<Dynamic>();
        var pokemonIds = new Array<Dynamic>();
        while (running)
        {
            var amberCount:UInt = main.event.ik.command.IkScriptCommand.GetSelectItemCount("ITEMID_HIMITUNOKOHAKU");
            var jawFossilCount:UInt = main.event.ik.command.IkScriptCommand.GetSelectItemCount("ITEMID_AGONOKASEKI");
            var sailFossilCount:UInt = main.event.ik.command.IkScriptCommand.GetSelectItemCount("ITEMID_HIRENOKASEKI");
            if (amberCount > 0 || jawFossilCount > 0 || sailFossilCount > 0)
            {
                labels = [];
                itemIds = [];
                restorationIds = [];
                pokemonIds = [];
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub030_001", 174);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_fossil_03", "fossil", "npc_sub030_001");
                var choiceCount = 0;
                if (jawFossilCount > 0)
                {
                    itemIds[0] = "ITEMID_AGONOKASEKI";
                    restorationIds[0] = "restoration_chigoras";
                    pokemonIds[0] = 696;
                    labels[0] = "msg_fossil_select_01";
                    choiceCount = 1;
                }
                if (sailFossilCount > 0)
                {
                    itemIds[choiceCount] = "ITEMID_HIRENOKASEKI";
                    restorationIds[choiceCount] = "restoration_amarus";
                    pokemonIds[choiceCount] = 698;
                    labels[choiceCount] = "msg_fossil_select_02";
                    choiceCount++;
                }
                if (amberCount > 0)
                {
                    itemIds[choiceCount] = "ITEMID_HIMITUNOKOHAKU";
                    restorationIds[choiceCount] = "restoration_ptera";
                    pokemonIds[choiceCount] = 142;
                    labels[choiceCount] = "msg_fossil_select_03";
                    choiceCount++;
                }
                labels[choiceCount] = "msg_fossil_select_04";
                var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(labels, 0, true, false, null, null, "fossil");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                if (selection != choiceCount)
                {
                    hasVacancy = main.event.ik.command.IkScriptCommand.CheckPossibleAddPpokemon();
                    if (hasVacancy)
                    {
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub030_001");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
                        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub030_001", 6);
                        main.event.ik.command.IkScriptCommand.WordSet_Name_Item(0, itemIds[selection], 1);
                        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub030_001", "rejoice_small_mc");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub030_001", 174);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_fossil_04", "fossil", "npc_sub030_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_RESTORE_FOSSILS");
                        main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.5);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -1.45, 0.03, -0.15, -74.35);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub030_001", -2.86, 0.02, -0.19, 85.41);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
                        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub030_001", "normal");
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub030_001", "Player", "head");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.7, 1.42, -1.12]), lua.Table.create([-4.0, 126.96, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                        main.event.ik.command.IkScriptCommand.Fade_In("White", 2.0);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(1, cast(pokemonIds[selection], Int));
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_fossil_05", "fossil", "npc_sub030_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub030_001", 74);
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                        main.event.ik.command.IkScriptCommand.WordSet_Name_Player(0);
                        main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(2, cast(pokemonIds[selection], Int));
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_POKEGET");
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_fossil_10", "fossil");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub030_001", "rejoice_small_mc");
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_fossil_06", "fossil", "npc_sub030_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub030_001", "normal");
                        main.event.ik.command.IkScriptCommand.ModifyItemNum(itemIds[selection], -1);
                        main.event.ik.command.IkScriptCommand.PokemonPossessionAdd(restorationIds[selection], "NONE", "NONE", "NONE", "MAPNAME_Lab");
                        cppbindings.C56DE81E7.f7D34D235();
                        running = false;
                        hasVacancy = true;
                    }
                    else
                    {
                        running = false;
                    }
                }
                else
                {
                    running = false;
                    hasVacancy = true;
                }
            }
            else
            {
                running = false;
                hasVacancy = true;
            }
        }
        if (hasVacancy)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub030_001", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_fossil_02", "fossil", "npc_sub030_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub030_001", 175);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_fossil_09", "fossil", "npc_sub030_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
