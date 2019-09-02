local LUI, T, E, L, V, P, G = unpack(select(2, ...))

local function LoadClassOpt()
    if not E.private.lui.viiclickset["enable"] then return end

    for k, v in T.pairs(E.private.lui.viiclickset.customClickSet.customMacro["macroList"]) do
        E.Options.args.lui.args.modules.args.viiclickset.args.customClickSet.args.customMacro.args.chooseMacro.values[k] = k
        E.Options.args.lui.args.modules.args.viiclickset.args.customClickSet.args.customMacro.args.delMacro.values[k] = k
        for key, value in T.pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args) do
            for key2, value2 in T.pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key].args) do
                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key].args[key2].values["#*" .. v] = "|cff9482c9#" .. k .. "|r"
                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec2.args[key].args[key2].values["#*" .. v] = "|cff9482c9#" .. k .. "|r"
                if E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3 then
                    E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3.args[key].args[key2].values["#*" .. v] = "|cff9482c9#" .. k .. "|r"
                end
                if E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4 then
                    E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4.args[key].args[key2].values["#*" .. v] = "|cff9482c9#" .. k .. "|r"
                end
            end
        end
    end
        
    if E.private.lui.viiclickset.general["presetSpell"] then
        for k, v in T.pairs(E:GetModule("VIIClickSet").ClickSets_Sets[E.myclass]) do
            if T.GetSpellInfo(k) then
                for key, value in T.pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args) do
                    for key2, value2 in T.pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key].args) do
                        E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key].args[key2].values[k] = T.GetSpellInfo(k) .. " (" .. k .. ") "
                        E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec2.args[key].args[key2].values[k] = T.GetSpellInfo(k) .. " (" .. k .. ") "
                        if E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3 then
                            E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3.args[key].args[key2].values[k] = T.GetSpellInfo(k) .. " (" .. k .. ") "
                        end
                        if E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4 then
                            E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4.args[key].args[key2].values[k] = T.GetSpellInfo(k) .. " (" .. k .. ") "
                        end
                    end
                end
            else
                if k == select(2, T.GetSpecializationInfo(1)) then
                    for k1, v1 in T.pairs(E:GetModule("VIIClickSet").ClickSets_Sets[E.myclass][k]) do
                        for key, value in T.pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args) do
                            for key2, value2 in T.pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key].args) do
                                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key].args[key2].values[k1] = T.GetSpellInfo(k1) .. " (" .. k1 .. ") "
                            end
                        end
                    end
                elseif k == select(2, T.GetSpecializationInfo(2)) then
                    for k2, v2 in T.pairs(E:GetModule("VIIClickSet").ClickSets_Sets[E.myclass][k]) do
                        for key, value in T.pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec2.args) do
                            for key2, value2 in T.pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec2.args[key].args) do
                                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec2.args[key].args[key2].values[k2] = T.GetSpellInfo(k2) .. " (" .. k2 .. ") "
                            end
                        end
                    end
                elseif E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3 and k == select(2, T.GetSpecializationInfo(3)) then
                    for k3, v3 in T.pairs(E:GetModule("VIIClickSet").ClickSets_Sets[E.myclass][k]) do
                        for key, value in T.pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3.args) do
                            for key2, value2 in T.pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3.args[key].args) do
                                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3.args[key].args[key2].values[k3] = T.GetSpellInfo(k3) .. " (" .. k3 .. ") "
                            end
                        end
                    end
                elseif E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4 and k == select(2, T.GetSpecializationInfo(4)) then
                    for k4, v4 in T.pairs(E:GetModule("VIIClickSet").ClickSets_Sets[E.myclass][k]) do
                        for key, value in T.pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4.args) do
                            for key2, value2 in T.pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4.args[key].args) do
                                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4.args[key].args[key2].values[k4] = T.GetSpellInfo(k4) .. " (" .. k4 .. ") "
                            end
                        end
                    end
                end
            end
        end
    end
        
    if E.private.lui.viiclickset.general["blizzardMacro"] then
        for i = 121, 550 do
            if T.GetMacroInfo(i) then
                for key, value in T.pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args) do
                    for key2, value2 in T.pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key].args) do
                        E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key].args[key2].values["#*" .. select(3, T.GetMacroInfo(i))] = "|cfff960d9#" .. select(1, T.GetMacroInfo(i)) .. "|r"
                        E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec2.args[key].args[key2].values["#*" .. select(3, T.GetMacroInfo(i))] = "|cfff960d9#" .. select(1, T.GetMacroInfo(i)) .. "|r"
                        if E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3 then
                            E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3.args[key].args[key2].values["#*" .. select(3, T.GetMacroInfo(i))] = "|cfff960d9#" .. select(1, T.GetMacroInfo(i)) .. "|r"
                        end
                        if E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4 then
                            E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4.args[key].args[key2].values["#*" .. select(3, T.GetMacroInfo(i))] = "|cfff960d9#" .. select(1, T.GetMacroInfo(i)) .. "|r"
                        end
                    end
                end
            end
        end
    end
        
    for k, v in T.pairs(E.private.lui.viiclickset.customClickSet.customSpell["clicksetlist"]) do
        if T.GetSpellInfo(k) then
            E.Options.args.lui.args.modules.args.viiclickset.args.customClickSet.args.customSpell.args.clicksetlist.values[k] = T.GetSpellInfo(k) .. " (" .. k .. ") "
            if v == true then
                for key, value in T.pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args) do
                    for key2, value2 in T.pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key].args) do
                        E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key].args[key2].values[k] = T.GetSpellInfo(k) .. " (" .. k .. ") "
                        E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec2.args[key].args[key2].values[k] = T.GetSpellInfo(k) .. " (" .. k .. ") "
                        if E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3 then
                            E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3.args[key].args[key2].values[k] = T.GetSpellInfo(k) .. " (" .. k .. ") "
                        end
                        if E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4 then
                            E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4.args[key].args[key2].values[k] = T.GetSpellInfo(k) .. " (" .. k .. ") "
                        end
                    end
                end
            end
        end
    end
        
    for key, value in T.pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args) do
        for key2, value2 in T.pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key].args) do
            E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key].args[key2].values["follow"] = L["follow"]
            E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key].args[key2].values["togglemenu"] = L["togglemenu"]
            E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key].args[key2].values["target"] = L["target"]
            E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key].args[key2].values["focus"] = L["focus"]
            E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec2.args[key].args[key2].values["follow"] = L["follow"]
            E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec2.args[key].args[key2].values["togglemenu"] = L["togglemenu"]
            E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec2.args[key].args[key2].values["target"] = L["target"]
            E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec2.args[key].args[key2].values["focus"] = L["focus"]
            if E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3 then
                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3.args[key].args[key2].values["follow"] = L["follow"]
                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3.args[key].args[key2].values["togglemenu"] = L["togglemenu"]
                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3.args[key].args[key2].values["target"] = L["target"]
                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3.args[key].args[key2].values["focus"] = L["focus"]
            end
            if E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4 then
                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4.args[key].args[key2].values["follow"] = L["follow"]
                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4.args[key].args[key2].values["togglemenu"] = L["togglemenu"]
                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4.args[key].args[key2].values["target"] = L["target"]
                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4.args[key].args[key2].values["focus"] = L["focus"]
            end
        end
    end
    
    E.private.lui.viiclickset.customClickSet.customMacro["chooseMacro"] = ""
    E.private.lui.viiclickset.customClickSet.customMacro["delMacro"] = ""
end

local function configTable()
    E.Options.args.lui.args.modules.args.viiclickset = {
        order = 16,
        name = L["viiClickSet"],
        type = "group",
        childGroups = "tab",
        get = function(info)
            return E.private.lui.viiclickset[info[#info]]
        end,
        set = function(info, value)
            E.private.lui.viiclickset[info[#info]] = value
            E:StaticPopup_Show("PRIVATE_RL")
        end,
        args = {
            name = {
                order = 0,
                type = "header",
                name = LUI:cOption(L["viiClickSet"]),
            },
            enable = {
                order = 1,
                type = "toggle",
                name = L["Enable"],
            },
            general = {
                order = 2,
                type = "group",
                name = L["general"],
                childGroups = "tab",
                get = function(info)
                    return E.private.lui.viiclickset.general[info[#info]]
                end,
                set = function(info, value)
                    E.private.lui.viiclickset.general[info[#info]] = value
                    E:StaticPopup_Show("PRIVATE_RL")
                end,
                args = {
                    blizzardMacro = {
                        order = 1,
                        type = "toggle",
                        name = L["blizzardMacro"],
                    },
                    presetSpell = {
                        order = 2,
                        type = "toggle",
                        name = L["presetSpell"],
                    },
                    spec1 = {
                        order = 3,
                        type = "group",
                        name = select(2, GetSpecializationInfo(1)),
                        get = function(info)
                            return E.private.lui.viiclickset.general.spec1[info[#info]]
                        end,
                        set = function(info, value)
                            E.private.lui.viiclickset.general.spec1[info[#info]] = value
                            E:GetModule("VIIClickSet"):ClickSet_CreateAndRefresh()
                        end,
                        args = {
                            MOUSEBUTTON1 = {
                                order = 1,
                                type = "group",
                                name = L["MOUSEBUTTON1"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type1 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type1"],
                                        desc = L["TYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype1 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype1"],
                                        desc = L["SHIFTZTYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype1 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype1"],
                                        desc = L["CTRLZTYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype1 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype1"],
                                        desc = L["ALTZTYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype1 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype1"],
                                        desc = L["ALTZCTRLZTYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype1 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype1"],
                                        desc = L["SHIFTZALTZTYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEBUTTON2 = {
                                order = 2,
                                type = "group",
                                name = L["MOUSEBUTTON2"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type2 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type2"],
                                        desc = L["TYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype2 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype2"],
                                        desc = L["SHIFTZTYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype2 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype2"],
                                        desc = L["CTRLZTYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype2 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype2"],
                                        desc = L["ALTZTYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype2 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype2"],
                                        desc = L["ALTZCTRLZTYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype2 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype2"],
                                        desc = L["SHIFTZALTZTYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEBUTTON3 = {
                                order = 3,
                                type = "group",
                                name = L["MOUSEBUTTON3"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type3 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type3"],
                                        desc = L["TYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype3 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype3"],
                                        desc = L["SHIFTZTYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype3 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype3"],
                                        desc = L["CTRLZTYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype3 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype3"],
                                        desc = L["ALTZTYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype3 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype3"],
                                        desc = L["ALTZCTRLZTYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype3 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype3"],
                                        desc = L["SHIFTZALTZTYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEBUTTON4 = {
                                order = 4,
                                type = "group",
                                name = L["MOUSEBUTTON4"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type4 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type4"],
                                        desc = L["TYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype4 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype4"],
                                        desc = L["SHIFTZTYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype4 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype4"],
                                        desc = L["CTRLZTYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype4 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype4"],
                                        desc = L["ALTZTYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype4 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype4"],
                                        desc = L["ALTZCTRLZTYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype4 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype4"],
                                        desc = L["SHIFTZALTZTYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEBUTTON5 = {
                                order = 5,
                                type = "group",
                                name = L["MOUSEBUTTON5"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type5 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type5"],
                                        desc = L["TYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype5 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype5"],
                                        desc = L["SHIFTZTYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype5 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype5"],
                                        desc = L["CTRLZTYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype5 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype5"],
                                        desc = L["ALTZTYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype5 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype5"],
                                        desc = L["ALTZCTRLZTYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype5 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype5"],
                                        desc = L["SHIFTZALTZTYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEWHEELUP = {
                                order = 6,
                                type = "group",
                                name = L["MOUSEWHEELUP"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type6 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type6"],
                                        desc = L["TYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype6 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype6"],
                                        desc = L["SHIFTZTYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype6 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype6"],
                                        desc = L["CTRLZTYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype6 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype6"],
                                        desc = L["ALTZTYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype6 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype6"],
                                        desc = L["ALTZCTRLZTYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype6 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype6"],
                                        desc = L["SHIFTZALTZTYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEWHEELDOWN = {
                                order = 7,
                                type = "group",
                                name = L["MOUSEWHEELDOWN"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type7 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type7"],
                                        desc = L["TYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype7 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype7"],
                                        desc = L["SHIFTZTYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype7 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype7"],
                                        desc = L["CTRLZTYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype7 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype7"],
                                        desc = L["ALTZTYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype7 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype7"],
                                        desc = L["ALTZCTRLZTYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype7 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype7"],
                                        desc = L["SHIFTZALTZTYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                        },
                    },
                    spec2 = {
                        order = 4,
                        type = "group",
                        name = select(2, GetSpecializationInfo(2)),
                        get = function(info)
                            return E.private.lui.viiclickset.general.spec2[info[#info]]
                        end,
                        set = function(info, value)
                            E.private.lui.viiclickset.general.spec2[info[#info]] = value
                            E:GetModule("VIIClickSet"):ClickSet_CreateAndRefresh()
                        end,
                        args = {
                            MOUSEBUTTON1 = {
                                order = 1,
                                type = "group",
                                name = L["MOUSEBUTTON1"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type1 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type1"],
                                        desc = L["TYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype1 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype1"],
                                        desc = L["SHIFTZTYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype1 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype1"],
                                        desc = L["CTRLZTYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype1 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype1"],
                                        desc = L["ALTZTYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype1 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype1"],
                                        desc = L["ALTZCTRLZTYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype1 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype1"],
                                        desc = L["SHIFTZALTZTYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEBUTTON2 = {
                                order = 2,
                                type = "group",
                                name = L["MOUSEBUTTON2"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type2 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type2"],
                                        desc = L["TYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype2 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype2"],
                                        desc = L["SHIFTZTYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype2 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype2"],
                                        desc = L["CTRLZTYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype2 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype2"],
                                        desc = L["ALTZTYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype2 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype2"],
                                        desc = L["ALTZCTRLZTYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype2 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype2"],
                                        desc = L["SHIFTZALTZTYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEBUTTON3 = {
                                order = 3,
                                type = "group",
                                name = L["MOUSEBUTTON3"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type3 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type3"],
                                        desc = L["TYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype3 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype3"],
                                        desc = L["SHIFTZTYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype3 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype3"],
                                        desc = L["CTRLZTYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype3 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype3"],
                                        desc = L["ALTZTYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype3 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype3"],
                                        desc = L["ALTZCTRLZTYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype3 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype3"],
                                        desc = L["SHIFTZALTZTYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEBUTTON4 = {
                                order = 4,
                                type = "group",
                                name = L["MOUSEBUTTON4"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type4 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type4"],
                                        desc = L["TYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype4 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype4"],
                                        desc = L["SHIFTZTYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype4 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype4"],
                                        desc = L["CTRLZTYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype4 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype4"],
                                        desc = L["ALTZTYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype4 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype4"],
                                        desc = L["ALTZCTRLZTYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype4 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype4"],
                                        desc = L["SHIFTZALTZTYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEBUTTON5 = {
                                order = 5,
                                type = "group",
                                name = L["MOUSEBUTTON5"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type5 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type5"],
                                        desc = L["TYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype5 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype5"],
                                        desc = L["SHIFTZTYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype5 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype5"],
                                        desc = L["CTRLZTYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype5 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype5"],
                                        desc = L["ALTZTYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype5 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype5"],
                                        desc = L["ALTZCTRLZTYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype5 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype5"],
                                        desc = L["SHIFTZALTZTYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEWHEELUP = {
                                order = 6,
                                type = "group",
                                name = L["MOUSEWHEELUP"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type6 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type6"],
                                        desc = L["TYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype6 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype6"],
                                        desc = L["SHIFTZTYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype6 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype6"],
                                        desc = L["CTRLZTYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype6 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype6"],
                                        desc = L["ALTZTYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype6 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype6"],
                                        desc = L["ALTZCTRLZTYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype6 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype6"],
                                        desc = L["SHIFTZALTZTYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEWHEELDOWN = {
                                order = 7,
                                type = "group",
                                name = L["MOUSEWHEELDOWN"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type7 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type7"],
                                        desc = L["TYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype7 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype7"],
                                        desc = L["SHIFTZTYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype7 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype7"],
                                        desc = L["CTRLZTYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype7 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype7"],
                                        desc = L["ALTZTYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype7 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype7"],
                                        desc = L["ALTZCTRLZTYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype7 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype7"],
                                        desc = L["SHIFTZALTZTYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                        },
                    },
                    spec3 = {
                        order = 5,
                        type = "group",
                        name = select(2, GetSpecializationInfo(3)) or " ",
                        hidden = function()
                            return not GetSpecializationInfo(3)
                        end,
                        get = function(info)
                            return E.private.lui.viiclickset.general.spec3[info[#info]]
                        end,
                        set = function(info, value)
                            E.private.lui.viiclickset.general.spec3[info[#info]] = value
                            E:GetModule("VIIClickSet"):ClickSet_CreateAndRefresh()
                        end,
                        args = {
                            MOUSEBUTTON1 = {
                                order = 1,
                                type = "group",
                                name = L["MOUSEBUTTON1"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type1 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type1"],
                                        desc = L["TYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype1 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype1"],
                                        desc = L["SHIFTZTYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype1 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype1"],
                                        desc = L["CTRLZTYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype1 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype1"],
                                        desc = L["ALTZTYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype1 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype1"],
                                        desc = L["ALTZCTRLZTYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype1 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype1"],
                                        desc = L["SHIFTZALTZTYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEBUTTON2 = {
                                order = 2,
                                type = "group",
                                name = L["MOUSEBUTTON2"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type2 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type2"],
                                        desc = L["TYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype2 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype2"],
                                        desc = L["SHIFTZTYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype2 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype2"],
                                        desc = L["CTRLZTYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype2 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype2"],
                                        desc = L["ALTZTYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype2 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype2"],
                                        desc = L["ALTZCTRLZTYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype2 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype2"],
                                        desc = L["SHIFTZALTZTYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEBUTTON3 = {
                                order = 3,
                                type = "group",
                                name = L["MOUSEBUTTON3"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type3 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type3"],
                                        desc = L["TYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype3 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype3"],
                                        desc = L["SHIFTZTYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype3 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype3"],
                                        desc = L["CTRLZTYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype3 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype3"],
                                        desc = L["ALTZTYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype3 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype3"],
                                        desc = L["ALTZCTRLZTYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype3 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype3"],
                                        desc = L["SHIFTZALTZTYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEBUTTON4 = {
                                order = 4,
                                type = "group",
                                name = L["MOUSEBUTTON4"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type4 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type4"],
                                        desc = L["TYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype4 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype4"],
                                        desc = L["SHIFTZTYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype4 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype4"],
                                        desc = L["CTRLZTYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype4 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype4"],
                                        desc = L["ALTZTYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype4 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype4"],
                                        desc = L["ALTZCTRLZTYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype4 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype4"],
                                        desc = L["SHIFTZALTZTYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEBUTTON5 = {
                                order = 5,
                                type = "group",
                                name = L["MOUSEBUTTON5"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type5 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type5"],
                                        desc = L["TYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype5 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype5"],
                                        desc = L["SHIFTZTYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype5 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype5"],
                                        desc = L["CTRLZTYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype5 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype5"],
                                        desc = L["ALTZTYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype5 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype5"],
                                        desc = L["ALTZCTRLZTYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype5 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype5"],
                                        desc = L["SHIFTZALTZTYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEWHEELUP = {
                                order = 6,
                                type = "group",
                                name = L["MOUSEWHEELUP"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type6 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type6"],
                                        desc = L["TYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype6 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype6"],
                                        desc = L["SHIFTZTYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype6 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype6"],
                                        desc = L["CTRLZTYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype6 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype6"],
                                        desc = L["ALTZTYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype6 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype6"],
                                        desc = L["ALTZCTRLZTYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype6 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype6"],
                                        desc = L["SHIFTZALTZTYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEWHEELDOWN = {
                                order = 7,
                                type = "group",
                                name = L["MOUSEWHEELDOWN"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type7 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type7"],
                                        desc = L["TYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype7 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype7"],
                                        desc = L["SHIFTZTYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype7 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype7"],
                                        desc = L["CTRLZTYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype7 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype7"],
                                        desc = L["ALTZTYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype7 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype7"],
                                        desc = L["ALTZCTRLZTYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype7 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype7"],
                                        desc = L["SHIFTZALTZTYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                        },
                    },
                    spec4 = {
                        order = 6,
                        type = "group",
                        name = select(2, GetSpecializationInfo(4)) or " ",
                        hidden = function()
                            return not GetSpecializationInfo(4)
                        end,
                        get = function(info)
                            return E.private.lui.viiclickset.general.spec4[info[#info]]
                        end,
                        set = function(info, value)
                            E.private.lui.viiclickset.general.spec4[info[#info]] = value
                            E:GetModule("VIIClickSet"):ClickSet_CreateAndRefresh()
                        end,
                        args = {
                            MOUSEBUTTON1 = {
                                order = 1,
                                type = "group",
                                name = L["MOUSEBUTTON1"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type1 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type1"],
                                        desc = L["TYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype1 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype1"],
                                        desc = L["SHIFTZTYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype1 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype1"],
                                        desc = L["CTRLZTYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype1 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype1"],
                                        desc = L["ALTZTYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype1 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype1"],
                                        desc = L["ALTZCTRLZTYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype1 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype1"],
                                        desc = L["SHIFTZALTZTYPE1_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEBUTTON2 = {
                                order = 2,
                                type = "group",
                                name = L["MOUSEBUTTON2"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type2 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type2"],
                                        desc = L["TYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype2 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype2"],
                                        desc = L["SHIFTZTYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype2 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype2"],
                                        desc = L["CTRLZTYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype2 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype2"],
                                        desc = L["ALTZTYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype2 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype2"],
                                        desc = L["ALTZCTRLZTYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype2 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype2"],
                                        desc = L["SHIFTZALTZTYPE2_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEBUTTON3 = {
                                order = 3,
                                type = "group",
                                name = L["MOUSEBUTTON3"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type3 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type3"],
                                        desc = L["TYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype3 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype3"],
                                        desc = L["SHIFTZTYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype3 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype3"],
                                        desc = L["CTRLZTYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype3 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype3"],
                                        desc = L["ALTZTYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype3 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype3"],
                                        desc = L["ALTZCTRLZTYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype3 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype3"],
                                        desc = L["SHIFTZALTZTYPE3_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEBUTTON4 = {
                                order = 4,
                                type = "group",
                                name = L["MOUSEBUTTON4"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type4 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type4"],
                                        desc = L["TYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype4 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype4"],
                                        desc = L["SHIFTZTYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype4 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype4"],
                                        desc = L["CTRLZTYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype4 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype4"],
                                        desc = L["ALTZTYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype4 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype4"],
                                        desc = L["ALTZCTRLZTYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype4 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype4"],
                                        desc = L["SHIFTZALTZTYPE4_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEBUTTON5 = {
                                order = 5,
                                type = "group",
                                name = L["MOUSEBUTTON5"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type5 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type5"],
                                        desc = L["TYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype5 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype5"],
                                        desc = L["SHIFTZTYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype5 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype5"],
                                        desc = L["CTRLZTYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype5 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype5"],
                                        desc = L["ALTZTYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype5 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype5"],
                                        desc = L["ALTZCTRLZTYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype5 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype5"],
                                        desc = L["SHIFTZALTZTYPE5_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEWHEELUP = {
                                order = 6,
                                type = "group",
                                name = L["MOUSEWHEELUP"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type6 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type6"],
                                        desc = L["TYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype6 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype6"],
                                        desc = L["SHIFTZTYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype6 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype6"],
                                        desc = L["CTRLZTYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype6 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype6"],
                                        desc = L["ALTZTYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype6 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype6"],
                                        desc = L["ALTZCTRLZTYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype6 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype6"],
                                        desc = L["SHIFTZALTZTYPE6_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                            MOUSEWHEELDOWN = {
                                order = 7,
                                type = "group",
                                name = L["MOUSEWHEELDOWN"],
                                disabled = function()
                                    return not E.private.lui.viiclickset["enable"]
                                end,
                                args = {
                                    type7 = {
                                        order = 1,
                                        type = "select",
                                        name = L["type7"],
                                        desc = L["TYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftztype7 = {
                                        order = 2,
                                        type = "select",
                                        name = L["shiftztype7"],
                                        desc = L["SHIFTZTYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    ctrlztype7 = {
                                        order = 3,
                                        type = "select",
                                        name = L["ctrlztype7"],
                                        desc = L["CTRLZTYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altztype7 = {
                                        order = 4,
                                        type = "select",
                                        name = L["altztype7"],
                                        desc = L["ALTZTYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    altzctrlztype7 = {
                                        order = 5,
                                        type = "select",
                                        name = L["altzctrlztype7"],
                                        desc = L["ALTZCTRLZTYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                    shiftzaltztype7 = {
                                        order = 6,
                                        type = "select",
                                        name = L["shiftzaltztype7"],
                                        desc = L["SHIFTZALTZTYPE7_DESC"],
                                        values = {
                                            ["NONE"] = L["NONE"],
                                        },
                                    },
                                },
                            },
                        },
                    },
                }
            },
            customClickSet = {
                order = 3,
                type = "group",
                name = L["customClickSet"],
                disabled = function()
                    return not E.private.lui.viiclickset["enable"]
                end,
                get = function(info)
                    return E.private.lui.viiclickset.customClickSet[info[#info]]
                end,
                set = function(info, value)
                    E.private.lui.viiclickset.customClickSet[info[#info]] = value
                end,
                args = {
                    customMacro = {
                        order = 1,
                        type = "group",
                        guiInline = true,
                        name = L["customMacro"],
                        disabled = function()
                            return not E.private.lui.viiclickset["enable"]
                        end,
                        get = function(info)
                            return E.private.lui.viiclickset.customClickSet.customMacro[info[#info]]
                        end,
                        set = function(info, value)
                            E.private.lui.viiclickset.customClickSet.customMacro[info[#info]] = value
                        end,
                        args ={
                            newMacro = {
                                order = 1,
                                type = "input",
                                name = L["newMacro"],
                                desc = L["newMacro_desc"],
                                get = function(info)
                                    return ""
                                end,
                                set = function(info, value)

                                    if value == "" then print(L["clickset_newMacro_err"]) return end
                                    E.private.lui.viiclickset.customClickSet.customMacro.macroList[value] = ""
                                    E.private.lui.viiclickset.customClickSet.customMacro.chooseMacro = value
                                    E.Options.args.lui.args.modules.args.viiclickset.args.customClickSet.args.customMacro.args.chooseMacro.values[value] = value
                                    E.Options.args.lui.args.modules.args.viiclickset.args.customClickSet.args.customMacro.args.delMacro.values[value] = value
                                end,
                            },
                            chooseMacro = {
                                order = 2,
                                type = "select",
                                name = L["chooseMacro"],
                                desc = L["chooseMacro_desc"],
                                values = {},
                            },
                            delMacro = {
                                order = 3,
                                type = "select",
                                name = L["delMacro"],
                                values = {},
                                confirm = true,
                                confirmText = L["delete_macro"],
                                set = function(info, value)
                                    for k, v in pairs(E.private.lui.viiclickset.customClickSet.customMacro.macroList) do
                                        if k == value then
                                            for key1, value1 in pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args) do
                                                for key2, value2 in pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key1].args) do
                                                    E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key1].args[key2].values["#*" .. v] = nil
                                                    E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec2.args[key1].args[key2].values["#*" .. v] = nil
                                                    if E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3 then
                                                        E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3.args[key1].args[key2].values["#*" .. v] = nil
                                                    end
                                                    if E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4 then
                                                        E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4.args[key1].args[key2].values["#*" .. v] = nil
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    E.private.lui.viiclickset.customClickSet.customMacro.macroList[value] = nil
                                    E.Options.args.lui.args.modules.args.viiclickset.args.customClickSet.args.customMacro.args.chooseMacro.values[value] = nil
                                    E.Options.args.lui.args.modules.args.viiclickset.args.customClickSet.args.customMacro.args.delMacro.values[value] = nil
                                end,
                            },
                            editMacro = {
                                order = 4,
                                type = "input",
                                name = L["editMacro"],
                                desc = L["editMacro_desc"],
                                width = "full",
                                multiline = true,
                                hidden = function()
                                    return E.private.lui.viiclickset.customClickSet.customMacro.chooseMacro == ""
                                end,
                                get = function(info)
                                    for k, v in pairs(E.private.lui.viiclickset.customClickSet.customMacro.macroList) do
                                        if k == E.private.lui.viiclickset.customClickSet.customMacro.chooseMacro then return v end
                                    end
                                end,
                                set = function(info, value)
                                    if value == "" then print(L["clickset_editMacro_err"]) return end
                                    local temp = E.private.lui.viiclickset.customClickSet.customMacro.chooseMacro
                                    E.private.lui.viiclickset.customClickSet.customMacro.macroList[temp] = value
                                    for key1, value1 in pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args) do
                                        for key2, value2 in pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key1].args) do
                                            E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key1].args[key2].values[value] = "|cff9482c9#" .. temp .. "|r"
                                            E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec2.args[key1].args[key2].values[value] = "|cff9482c9#" .. temp .. "|r"
                                            if E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3 then
                                                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3.args[key1].args[key2].values[value] = "|cff9482c9#" .. temp .. "|r"
                                            end
                                            if E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4 then
                                                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4.args[key1].args[key2].values[value] = "|cff9482c9#" .. temp .. "|r"
                                            end
                                        end
                                    end
                                    E.private.lui.viiclickset.customClickSet.customMacro.chooseMacro = ""
                                end,
                            },
                        },
                    },
                    customSpell = {
                        order = 2,
                        type = "group",
                        guiInline = true,
                        name = L["customSpell"],
                        disabled = function()
                            return not E.private.lui.viiclickset["enable"]
                        end,
                        get = function(info)
                            return E.private.lui.viiclickset.customClickSet.customSpell[info[#info]]
                        end,
                        set = function(info, value)
                            E.private.lui.viiclickset.customClickSet.customSpell[info[#info]] = value
                        end,
                        args = {
                            newName = {
                                order = 1,
                                type = "input",
                                name = L["clickset_newname"],
                                desc = L["clickset_newname_desc"],
                                get = function(info)
                                    return ""
                                end,
                                set = function(info, value)
                                    if not GetSpellInfo(value) then
                                        print(L["clickset_newname_err"])
                                        return
                                    end
                                    local spellname, _, _, _, _, _, spellID = GetSpellInfo(value)
                                    spellID = T.tostring(spellID)
                                    E.private.lui.viiclickset.customClickSet.customSpell.clicksetlist[spellID] = false
                                    E.Options.args.lui.args.modules.args.viiclickset.args.customClickSet.args.customSpell.args.clicksetlist.values[spellID] = spellname .. " (" .. spellID .. ") "
                                end,
                            },
                            delName = {
                                order = 2,
                                type = 'input',
                                name = L['clickset_deletename'],
                                desc = L["clickset_deletename_desc"],
                                get = function(info)
                                    return ""
                                end,
                                set = function(info, value)
                                    local spellname, _, _, _, _, _, spellID = GetSpellInfo(value)
                                    spellID = T.tostring(spellID)
                                    if E.private.lui.viiclickset.customClickSet.customSpell.clicksetlist[spellID] == nil then
                                        print(L["clickset_deletename_err"])
                                        return
                                    end
                                    for key1, value1 in pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args) do
                                        for key2, value2 in pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key1].args) do
                                            E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key1].args[key2].values[spellID] = nil
                                            E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec2.args[key1].args[key2].values[spellID] = nil
                                            if E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3 then
                                                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3.args[key1].args[key2].values[spellID] = nil
                                            end
                                            if E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4 then
                                                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4.args[key1].args[key2].values[spellID] = nil
                                            end
                                        end
                                    end
                                    E.private.lui.viiclickset.customClickSet.customSpell.clicksetlist[spellID] = nil
                                    E.Options.args.lui.args.modules.args.viiclickset.args.customClickSet.args.customSpell.args.clicksetlist.values[spellID] = nil
                                end,
                            },
                            clicksetlist = {
                                order = 3,
                                type = "multiselect",
                                name = L["clicksetlist"],
                                get = function(info, k)
                                    return E.private.lui.viiclickset.customClickSet.customSpell.clicksetlist[k]
                                end,
                                set = function(info, k, v)
                                    E.private.lui.viiclickset.customClickSet.customSpell.clicksetlist[k] = v
                                    local spellname, _, _, _, _, _, spellID = GetSpellInfo(k)
                                    spellID = T.tostring(spellID)
                                    if v then
                                        for key, value in pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args) do
                                            for key2, value2 in pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key].args) do
                                                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key].args[key2].values[spellID] = spellname .. " (" .. spellID .. ") "
                                                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec2.args[key].args[key2].values[spellID] = spellname .. " (" .. spellID .. ") "
                                                if E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3 then
                                                    E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3.args[key].args[key2].values[spellID] = spellname .. " (" .. spellID .. ") "
                                                end
                                                if E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4 then
                                                    E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4.args[key].args[key2].values[spellID] = spellname .. " (" .. spellID .. ") "
                                                end
                                            end
                                        end
                                    else
                                        for key, value in pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args) do
                                            for key2, value2 in pairs(E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key].args) do
                                                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec1.args[key].args[key2].values[spellID] = nil
                                                E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec2.args[key].args[key2].values[spellID] = nil
                                                if E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3 then
                                                    E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec3.args[key].args[key2].values[spellID] = nil
                                                end
                                                if E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4 then
                                                    E.Options.args.lui.args.modules.args.viiclickset.args.general.args.spec4.args[key].args[key2].values[spellID] = nil
                                                end
                                            end
                                        end
                                    end
                                end,
                                values = {},
                            },
                        },
                    },
                },
            },
            clickSetFrames = {
                order = 4,
                type = "group",
                name = L["clickSetFrames"],
                disabled = function()
                    return not E.private.lui.viiclickset["enable"]
                end,
                get = function(info)
                    return E.private.lui.viiclickset.clickSetFrames[info[#info]]
                end,
                set = function(info, value)
                    E.private.lui.viiclickset.clickSetFrames[info[#info]] = value
                end,
                args = {
                    blizzardFrames = {
                        order = 1,
                        type = "group",
                        guiInline = true,
                        name = L["blizzardFrames"],
                        get = function(info)
                            return E.private.lui.viiclickset.clickSetFrames.blizzardFrames[info[#info]]
                        end,
                        set = function(info, value)
                            E.private.lui.viiclickset.clickSetFrames.blizzardFrames[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                        args = {
                            blizzardPlayerFrame = {
                                order = 1,
                                type = "toggle",
                                name = L["blizzardPlayerFrame"],
                            },
                            blizzardPetFrame = {
                                order = 2,
                                type = "toggle",
                                name = L["blizzardPetFrame"],
                            },
                            blizzardTargetFrame = {
                                order = 3,
                                type = "toggle",
                                name = L["blizzardTargetFrame"],
                            },
                            blizzardFocusFrame = {
                                order = 4,
                                type = "toggle",
                                name = L["blizzardFocusFrame"],
                            },
                            blizzardPartyFrames = {
                                order = 5,
                                type = "toggle",
                                name = L["blizzardPartyFrames"],
                            },
                            blizzardCompactFrames = {
                                order = 6,
                                type = "toggle",
                                name = L["blizzardCompactFrames"],
                            },
                            blizzardBossFrames = {
                                order = 7,
                                type = "toggle",
                                name = L["blizzardBossFrames"],
                            },
                        },
                    },
                    elvuiFrames = {
                        order = 2,
                        type = "group",
                        guiInline = true,
                        name = L["elvuiFrames"],
                        get = function(info)
                            return E.private.lui.viiclickset.clickSetFrames.elvuiFrames[info[#info]]
                        end,
                        set = function(info, value)
                            E.private.lui.viiclickset.clickSetFrames.elvuiFrames[info[#info]] = value
                            E:StaticPopup_Show("PRIVATE_RL")
                        end,
                        args = {
                            elvuiPlayerFrame = {
                                order = 1,
                                type = "toggle",
                                name = L["elvuiPlayerFrame"],
                            },
                            elvuiPetFrame = {
                                order = 2,
                                type = "toggle",
                                name = L["elvuiPetFrame"],
                            },
                            elvuiTargetFrame = {
                                order = 3,
                                type = "toggle",
                                name = L["elvuiTargetFrame"],
                            },
                            elvuiFocusFrame = {
                                order = 4,
                                type = "toggle",
                                name = L["elvuiFocusFrame"],
                            },
                            elvuiPartyFrames = {
                                order = 5,
                                type = "toggle",
                                name = L["elvuiPartyFrames"],
                            },
                            elvuiRaidFrames = {
                                order = 6,
                                type = "toggle",
                                name = L["elvuiRaidFrames"],
                            },
                            elvuiRaid40Frames = {
                                order = 7,
                                type = "toggle",
                                name = L["elvuiRaid40Frames"],
                            },
                            elvuiBossFrames = {
                                order = 8,
                                type = "toggle",
                                name = L["elvuiBossFrames"],
                            },
                            elvuiArenaFrames = {
                                order = 9,
                                type = "toggle",
                                name = L["elvuiArenaFrames"],
                            },
                        },
                    },
                },
            },
        },
    }
    
    LoadClassOpt()
end

T.table_insert(LUI.Configs, configTable)
