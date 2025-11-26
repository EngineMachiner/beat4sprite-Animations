
local Infinitesimal = beat4sprite.Modules.Infinitesimal

local statesRate = beat4sprite.Actor.statesRate

local function onChildren(self)

    local x = - statesRate(self) / 64         self:texcoordvelocity(x, 0)

end

return Infinitesimal.Background {

    params = ...,

    OnCommand=function(self) self:queuecommand("Scroll") end,

    ScrollCommand=function(self) self:GetChild("Grid"):RunCommandsOnChildren(onChildren) end

}