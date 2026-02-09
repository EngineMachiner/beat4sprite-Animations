
local Red = Color.Red

local Builder = beat4sprite.Builder.Retro           local Vector = Astro.Vector

return Builder.Load {

    { Texture = "4th/5 5x4.png",          States = 13,        Scroll = Vector("Up"),    Rate = 2 },

    {

        Texture = "4th/5 5x4.png",
        
        States = 12,        Direction = Vector("Down"),         Colors = { Red, Red },

        Sprite = {
            
            OnCommand=function(self) self:blend("add") end,

            Motion2Command=function(self) self:rotationz( self:GetRotationZ() + 360 ) end
        
        },

        Script = "Particles/Depth/Spread"

    }

}