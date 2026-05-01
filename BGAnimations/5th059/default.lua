
local Vector = Astro.Vector

local builder = beat4sprite.Builder.Retro {

    Mirror = { x = true },          Output = { Offset = false },

    Texture = "5th/6 4x4.png",      States = { First = 7, Last = 8, Position = Vector(1) }

}

return builder:merge(...):Load()