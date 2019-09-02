local LUI, T, E, L, V, P, G = unpack(select(2, ...))
if E.db["lui"] then
    if E.db.lui["modules"] then
        if E.db.lui.modules["blizzard"] then
            if E.db.lui.modules.blizzard["general"] then
                if E.db.lui.modules.blizzard.general["BlizzardFrames"] then
                else return end
            else return end
        else return end
    else return end
else return end

local B = E:GetModule("Blizzard")

function B:Initialize()
    self.Initialized = true
end