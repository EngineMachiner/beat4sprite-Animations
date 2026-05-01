
local Direction = Astro.Vector("Right")

local builder = beat4sprite.Builder.Retro {

    { Texture = "5th/3 4x4.png",      States = 16,      Output = { Offset = false } },

    {

        Texture = "5th/4 4x3.png",      States = { Last = 4, Types = "Position" },      Direction = Direction,

        Script = "Particles/Depth/Spread"

    }

}

return builder:merge(...):Load()