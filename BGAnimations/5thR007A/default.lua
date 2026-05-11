
local builder = beat4sprite.Builder.Retro.Background2 {

    Texture = "5th/2 6x11.png",         States = { Last = 64 }

}

return builder:merge(...):Load()