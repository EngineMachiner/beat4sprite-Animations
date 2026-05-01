
local builder = beat4sprite.Builder.Retro {

    {
        
        Dynamic = true,

        Texture = "5th/1 4x1.png",     States = { Last = 4, Types = "Position" }
    
    },

    {
        
        Texture = "5th/3 4x3.png",     States = { Last = 6, Types = "Position", Rate = 0.5 },
        
        Direction = Astro.Vector("Down"),       Script = "Particles/Depth/Spread",

        Colors = { Color.White,    color("#808080") }
    
    }

}

builder = builder:merge(...)            return builder:Load()