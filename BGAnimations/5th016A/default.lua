
local builder = beat4sprite.Builder.Retro {

    Texture = "5th/1 4x3.png",       States = { First = 11, Last = 12 }

}

return builder:merge(...):Load()