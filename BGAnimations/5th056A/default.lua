
local builder = beat4sprite.Builder.Retro {

    { Texture = "5th/1 2x2.png",        States = 1 },

    {

        Texture = "5th/3 4x4.png",      States = 9,
        
        Direction = Astro.Vector("Right"),      Script = "Particles/Depth/Spread"

    }

}

return builder:merge(...):Load()