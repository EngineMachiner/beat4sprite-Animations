
local Builder = beat4sprite.Builder.Retro           local Background = Builder.Background

local builder = Builder {

    Background { Texture = "5th/8.png" },

    Background {
        
        Texture = "5th/9.png",

        Output = {

            OnCommand=function(self) self:queuecommand("Alpha") end,

            AlphaCommand = beat4sprite.Actor.Commands.Alpha2

        }
    
    }

}

return builder:merge(...):Load()