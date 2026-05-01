
local builder = beat4sprite.Builder.Retro {

    { Texture = "5th/4 4x3.png",    States = 12 },

    {
        
        Texture = "5th/3 4x3.png",    States = { Last = 6 },    Direction = Astro.Vector("Left"),

        Script = "Particles/Depth/Spread"
    
    }

}

return builder:merge(...):Load()