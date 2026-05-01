
local Builder = beat4sprite.Builder.Retro

local builder = Builder {

    Builder.Background { Texture = "5th/2.png",    States = 12 },

    {
        
        Texture = "5th/2 4x3.png",    States = { Last = 12 },    Reversed = true,

        Script = "Particles/Depth/Cascade"
    
    }

}

return builder:merge(...):Load()