
local builder = beat4sprite.Builder.Retro {

    {
        
        Texture = "5th/1 4x4.png",        States = { First = 7,   Last = 8,     Rate = 2 },

        Output = { Offset = false }
    
    },

    {
        
        Dynamic = true,     Texture = "5th/2 4x4.png",     Rate = 2,
        
        States = { First = 5,   Last = 8,   Types = "Random",   Rate = 0.5 }
    
    }

}

return builder:merge(...):Load()