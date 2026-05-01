
local builder = beat4sprite.Builder.Retro {

    { Texture = "5th/2 5x4.png",    States = 10 },

    { Texture = "5th/2 5x4.png",    States = 1,     Script = "Particles/Depth/Bounce" }

}

return builder:merge(...):Load()