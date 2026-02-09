
local Builder = beat4sprite.Builder.Retro           local Vector = Astro.Vector

local Rainbow = Builder { Alpha = 0.5 }

local Rainbow = beat4sprite.ScreenQuad() .. {
            
    OnCommand=function(self) self:init(Rainbow):blend("modulate"):Center()      self.Rainbow = true end,

    UpdateFunctionCommand=function(self) self:updateRainbow() end

}

return Builder.Load {

    {
        
        Texture = beat4sprite.songBackgroundPath(),     Script = "Morph/Pulse",

        Layers = { Front = Rainbow }
    
    },

    {

        Texture = "4th/2 5x4.png",
        
        Reversed = true,        States = 1,         Effect = { Magnitude = Vector { z = -45 } },
        
        Sprite = { OnCommand=function(self) self:setEffect("spin") end },

        Script = "Particles/Depth/Cascade.lua"

    }

}