
local builder = beat4sprite.Builder.Retro.Background2 {

    Texture = "5th/2 12x14.png",        States = { Last = 160,      Rate = 4 },

}

return builder:merge(...):Load()