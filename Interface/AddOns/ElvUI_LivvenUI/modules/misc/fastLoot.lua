--来源：LivvenUI
--作者：L
--修改：
local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if LUI:CheckDB("db", "modules", "misc", "loot", "fastLoot", "enable") then return end

local LMI = E:GetModule("LuiMisc")

function LMI:LoadFastLoot()
    local epoch = 0
    local FLSpeed
    if E.db.lui.modules.misc.loot.fastLoot["lootSpeed"] == "光速" then
        FLSpeed = 0
    elseif E.db.lui.modules.misc.loot.fastLoot["lootSpeed"] == "极快" then
        FLSpeed = 0.1
    else
        FLSpeed = 0.2
	end
	
    self:RegisterEvent("LOOT_READY", function()
        if (T.GetTime() - epoch) >= FLSpeed then
            if T.GetCVarBool("autoLootDefault") ~= T.IsModifiedClick("AUTOLOOTTOGGLE") then
                for i = T.GetNumLootItems(), 1, -1 do
                    T.LootSlot(i)
                end
                epoch = T.GetTime()
            end
        end
    end)
end
