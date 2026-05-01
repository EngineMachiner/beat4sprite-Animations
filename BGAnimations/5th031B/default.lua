
local Background = beat4sprite.Builder.Retro {

    Texture = "5th/6 4x3.png",      States = 12

}

local builder = beat4sprite.Builder.Retro {

    Texture = "5th/1 2x1.png",      States = 1

}

return beat4sprite.BaseFrame { 
    
    Background:Load(),
    
    builder:merge(...):Load() .. {
    
        OnCommand=function(self) self:queuecommand("Alpha") end,

        AlphaCommand = beat4sprite.Actor.Commands.Alpha2

    }

}