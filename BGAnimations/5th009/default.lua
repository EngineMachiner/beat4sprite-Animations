
local Vector = Astro.Vector         local componentDivision = Vector.componentDivision

return beat4sprite.Builder.Retro.Load {

    {
        
        Texture = "5th/6 4x4.png",          Output = { Offset = false },
        
        States = 13,        Scroll = Vector("UpLeft"),        Rate = 2,

        Quad = {
            
            Dynamic = true,     Colors = { Color.White, Color.Red },       Blend = "Modulate",

            Sprite = { 
                
                OnCommand=function(self)
                    
                    local pos = componentDivision( self.TilePos, self.TileParent.Matrix )

                    self:setEffectOffset(pos):setEffect("diffuseshift")
                
                end
                
            },

            Effect = { Period = 4 }

        }

    },

    {
        
        Texture = "5th/6 4x4.png",      States = { Last = 2 },      Rate = 2,
        
        Script = "Particles/LaneSweep"
    
    }

}