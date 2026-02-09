
local Builder = beat4sprite.Builder.Retro           local Vector = Astro.Vector

local animationPath = beat4sprite.animationPath("4thK01A")

local builder = loadfile(animationPath)().Builder

builder[2] = Builder {

    Texture = "4th/1 16x8.png",          States = { Last = 127,     Rate = 8 },
    
    Effect = { Magnitude = Vector { z = 45 } },         Blend = "add",      Mirror = true,

    Composition = { OnCommand=function(self) self:setEffect("spin"):zoom(1.4) end },

    Output = { Offset = false,      Scale = 0.625 }

}

return builder:Load()