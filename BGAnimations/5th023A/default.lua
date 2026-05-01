
local builder = beat4sprite.Builder.Retro {

    {
        
        Texture = "5th/1 4x4.png",    States = 13,      Colors = { Color.White, Color.Black },

        Output = { Offset = false,      OnCommand=function(self) self:setEffect("diffuseramp") end }
    
    },

    {
        
        Texture = "5th/1 4x3.png",    States = { Last = 2,  Types = "Position" },
        
        Colors = { Color.White, color("#808080") },      Direction = Astro.Vector("Down"),

        Script = "Particles/Depth/Spread"
    
    }

}

return builder:merge(...):Load()