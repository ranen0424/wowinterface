local LUI, T, E, L, V, P, G = unpack(select(2, ...))
local LMI = E:GetModule("LuiMisc")

function LMI:LoadNumberPrefixStyle()
    E.ShortPrefixStyles = {
        ["CHINESE"] = {{1e8, L["Y"]}, {1e4, L["W"]}},
        ["ENGLISH"] = {{1e12,"T"}, {1e9,"B"}, {1e6,"M"}, {1e3,"K"}},
        ["GERMAN"] = {{1e12,"Bio"}, {1e9,"Mrd"}, {1e6,"Mio"}, {1e3,"Tsd"}},
        ["KOREAN"] = {{1e8,"억"}, {1e4,"만"}, {1e3,"천"}},
        ["METRIC"] = {{1e12,"T"}, {1e9,"G"}, {1e6,"M"}, {1e3,"k"}}
    }

    E:BuildPrefixValues()
end