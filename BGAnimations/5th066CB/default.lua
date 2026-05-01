
local path = beat4sprite.animationPath("5th066A")           local merge = tapLua.deepMerge

local Actor = loadfile(path) { States = 8 }         local builder = Actor.Builder

builder[2] = beat4sprite.Builder.Retro {

    Texture = "5th/2 5x4.png",

    Sprite = { OnCommand=function(self) self:setEffect("spin") end },
    
    Effect = { Magnitude = Astro.Vector { z = 45 } },         Script = "Particles/Depth/Cascade"

}

return builder:merge(...):Load()