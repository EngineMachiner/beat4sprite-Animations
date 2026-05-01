
local Vector = Astro.Vector

local builder = beat4sprite.Builder.Retro {

    {
        
        Texture = "5th/3 4x4.png",
        
        States = { First = 7, Last = 8, Position = true },       Matrix = Vector( 2, 1 ),

        Output = { Offset = false }
    
    },

    {

        Dynamic = true,     Matrix = Vector( 4, 4 ),    Spiral = true,

        Texture = "5th/3 4x4.png",      States = 9,

        Sprite = {
            
            OnCommand=function(self)

                local i = self:spiralIndex() - 1        local sleep = i * self:tweenRate() / 8

                self.z = self:GetZoom()         self:zoom(0):sleep(sleep):queuecommand("Spiral")
            
            end,

            SpiralCommand=function(self)
            
                local t = self:tweenRate() / 2        local z = self.z

                self:linear( t / 2 ):zoom(z):sleep( t * 7.5 )
                self:linear( t / 2 ):zoom(0):sleep( t * 7.5 )

                self:queuecommand("Spiral")
            
            end
        
        }

    }

}

return builder:merge(...):Load()