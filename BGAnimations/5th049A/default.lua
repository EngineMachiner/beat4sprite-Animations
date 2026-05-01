
local builder = beat4sprite.Builder.Retro {

    Dynamic = true,

    Texture = "5th/1 5x4.png",      States = { Last = 20, Types = "Random" }

}

return builder:merge(...):Load()