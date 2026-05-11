
local builder = beat4sprite.Builder.Retro.Background2 {

    Texture = "5th/1 6x4.png",        States = { Last = 24, Rate = 0.5 }

}

return builder:merge(...):Load()