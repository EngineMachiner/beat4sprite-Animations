
local Builder = beat4sprite.Builder.Retro

local builder = Builder {

    Builder.Background { Texture = "5th/9.png" },

    {
        
        Texture = "5th/2 5x4.png",      States = { First = 11, Last = 15 },

        Direction = Astro.Vector("Left"),       Script = "Particles/Depth/Spread"
    
    }

}

return builder:merge(...):Load()