
local Builder = beat4sprite.Builder.Retro           local Vector = Astro.Vector

local builder = Builder {

    { Texture = beat4sprite.songBackgroundPath(),     Script = "Morph/Flag" },

    {

        Texture = "4th/8 5x4.png",      Blend = "add",      Alpha = 0.75,        Mirror = true,
        
        Reversed = true,        States = 5,         Effect = { Magnitude = Vector { z = 45 } },
        
        Composition = { OnCommand=function(self) self.Rainbow = true        self:zoom(1.4):setEffect("spin") end }

    }

}

return builder:merge(...):Load()