
local builder = beat4sprite.Builder.Retro.Background2 {

    Texture = "5th/6 12x11.png",        States = { Last = 128, Rate = 4 }

}

return builder:merge(...):Load()