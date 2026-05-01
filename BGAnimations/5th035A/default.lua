
local builder = beat4sprite.Builder.Retro {

    {
        
        Dynamic = true,     Rate = 2,

        Texture = "5th/6 4x4.png",      States = 15,        Scroll = Astro.Vector("UpLeft"),
    
        Sprite = { OnCommand=function(self) self:setupRainbowBlink(1) end }

    },

    {
        
        Texture = "5th/6 4x4.png",      Colors = { Color.White, color("#808080") },

        States = { First = 11, Last = 12, Types = { "Idle", "Position" } },

        Direction = Astro.Vector("Down"),       Script = "Particles/Depth/Spread",

        Sprite = {
            
            Motion2Command=function(self)
                
                local z = self:GetRotationZ() + 180         self:rotationz(z)
            
            end
            
        }
    
    }

}

return builder:merge(...):Load()
