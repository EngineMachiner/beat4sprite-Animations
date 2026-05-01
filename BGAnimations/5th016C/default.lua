
local path = beat4sprite.animationPath("5th012A")           local Red = loadfile(path)()

path = beat4sprite.animationPath("5th016A")

local Fire = loadfile(path)() .. {

    OnCommand=function(self) self:queuecommand("Alpha") end,

    AlphaCommand = beat4sprite.Actor.Commands.Alpha2

}

return beat4sprite.BaseFrame { Red, Fire }