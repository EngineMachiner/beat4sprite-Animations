
local builder = beat4sprite.Builder.Retro {

    Texture = "5th/5 4x4.png",          States = { First = 16,  Last = 13,  Rate = 0.5 },

    Output = { Offset = false }

}

return builder:merge(...):Load()