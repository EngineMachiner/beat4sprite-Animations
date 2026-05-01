
local builder = beat4sprite.Builder.Retro {

    { Texture = "5th/3 4x4.png",            States = { First = 5,   Last = 6,   Rate = 2 } },

    {
        
        Texture = "5th/3 4x3.png",            States = { Last = 6,  Types = "Position", Rate = 0.5 },
        
        Script = "Particles/ScreenBounce"
    
    }

}

return builder:merge(...):Load()
