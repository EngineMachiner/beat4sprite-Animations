
local builder = beat4sprite.Builder.Retro {

    Dynamic = true,

    Texture = "5th/6 4x3.png",      States = { First = 11, Last = 12, Position = true }

}

return builder:merge(...):Load()