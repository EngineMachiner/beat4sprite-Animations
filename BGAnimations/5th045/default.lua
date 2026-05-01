
local Vector = Astro.Vector

local States = { First = 8, Last = 9, Types = "Idle", Position = true }

local builder = beat4sprite.Builder.Retro {

    {
        
        Texture = "5th/7 4x4.png",      States = States,      Matrix = Vector( 2, 2 ),

        Output = { Offset = false }
    
    },

    {

        Texture = "5th/6 4x4.png",      States = { Last = 2 },

        Dynamic = true,     Spiral = true,        Matrix = Vector( 4, 4 ),

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