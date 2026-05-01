
local builder = beat4sprite.Builder.Retro {

    Texture = "5th/6 4x4.png",      States = { First = 5, Last = 6 }

}

return builder:merge(...):Load()