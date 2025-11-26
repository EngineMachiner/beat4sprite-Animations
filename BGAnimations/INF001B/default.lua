
local Infinitesimal = beat4sprite.Modules.Infinitesimal

local statesRate = beat4sprite.Actor.statesRate

local function onChildren(self)

    local y = - statesRate(self) / 24         self:texcoordvelocity(0, y)

end

return Infinitesimal.Background {

    params = ...,

    OnCommand=function(self) self:queuecommand("Scroll") end,

    ScrollCommand=function(self) self:GetChild("Grid"):RunCommandsOnChildren(onChildren) end

}