
local Vector = Astro.Vector         local Matrix = Vector( 5, 1 )

local builder = beat4sprite.Builder.Retro {

    { Texture = "5th/1.png",         Script = "Kaleidoscope/Tile" },

    beat4sprite.Load("Morph/Grid") {

        Texture = "5th/2.png",      Matrix = Matrix,

        States = { Matrix = Matrix,     Scroll = Vector("Right") },

        Sprite = {
            
            OnCommand=function(self) self:queuecommand("Spin") end,

            SpinCommand = beat4sprite.Actor.Commands.SpinX
        
        }

    }

}

return builder:merge(...):Load()