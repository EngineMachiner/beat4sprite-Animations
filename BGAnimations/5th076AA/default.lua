
local builder = beat4sprite.Builder.Retro {

    { Texture = "5th/6 4x3.png",        States = { First = 11, Last = 12 } },

    { Texture = "5th/6 4x4.png",        States = 9,         Script = "Particles/Depth/Helix" }

}

return builder:merge(...):Load()