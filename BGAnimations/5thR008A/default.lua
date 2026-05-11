
local builder = beat4sprite.Builder.Retro.Background2 {

    Texture = "5th/2 12x11.png",        States = { Last = 128, Rate = 2 }

}

return builder:merge(...):Load()