
local path = beat4sprite.animationPath("5thBG000")

local Actor = loadfile(path) {
    
    Effect = {  },      Colors = { Color.White, color("#808080") },

    Output = { OnCommand=function(self) self:setEffect("diffuseramp") end }

}

return beat4sprite.Builder.Retro.Load {
	
    Actor.Builder:input(),

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