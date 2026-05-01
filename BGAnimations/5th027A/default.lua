
local builder = beat4sprite.Builder.Retro {

    { Texture = "5th/1 1x4.png",       States = { Last = 4 } },

    { Dynamic = true,       Texture = "5th/2 4x4.png",     States = { Last = 4,  Types = "Random" } }

}

return builder:merge(...):Load()