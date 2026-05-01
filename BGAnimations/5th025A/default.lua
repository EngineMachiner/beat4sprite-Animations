
local Vector = Astro.Vector

local builder = beat4sprite.Builder.Retro {

    { Texture = "5th/6 4x4.png",    States = 13,    Scroll = Vector("Up"),  Rate = 2 },

    {
        
        Texture = "5th/6 4x3.png",    States = { Last = 2,  Types = "Position" },
        
        Direction = Vector("Down"),     Script = "Particles/Depth/Spread"
    
    }

}

return builder:merge(...):Load()