
local Magnitude = Astro.Vector { z = 45 }

local Symbols = beat4sprite.Builder.Retro.Load {

    Texture = "5th/1 4x4.png",      States = 9,         Effect = { Magnitude = Magnitude },
    
    Colors = { Color.White, color("#808080") },         Script = "Particles/Depth/Cascade",

    Sprite = { OnCommand=function(self) self:setEffect("spin") end }

}

local path = beat4sprite.animationPath("5th016A")

return loadfile(path) { Layers = { Front = Symbols } }