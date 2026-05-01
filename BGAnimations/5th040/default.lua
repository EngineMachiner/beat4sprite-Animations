
local Vector = Astro.Vector

local builder = beat4sprite.Builder.Retro {

    Matrix = Vector( 2, 2 ),        Output = { Offset = false },

    Texture = "5th/7 4x4.png",      States = { First = 7, Last = 8, Position = true }

}

return builder:merge(...):Load()