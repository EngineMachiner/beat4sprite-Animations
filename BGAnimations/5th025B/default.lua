
local builder = beat4sprite.Builder.Retro {

    { Texture = "5th/6 4x4.png",    States = 13 },

    {
        
        Texture = "5th/6 4x4.png",      States = 9,       Rate = 2,
        
        Script = "Particles/LaneSweep"
    
    }

}

return builder:merge(...):Load()