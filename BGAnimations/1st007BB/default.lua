
local Builder = beat4sprite.Builder.Retro           local Vector = Astro.Vector

local isEven = Astro.Math.isEven

return Builder.Load {

    -- Orange city background.

	{ Texture = "1st/1/2.png",        Scroll = Vector("Left"),      Rate = 2 },

    -- Pulsing trance letters.

	{

        Dynamic = true,
        
        Texture = "1st/7 6x1.png",      Alpha = 0.5,        Matrix = Vector(6,3),

        States = { Last = 6,    Types = "Idle",    Position = Vector(1) },

        Effect = { Magnitude = Vector( 1, 1.25 ),    Period = 2 },
        
        Sprite = {
            
            OnCommand=function(self)
                
                local x = self.TilePos.x

                local i = x - 3.5               self:addx( - i * 30 )


                i = self:GetState() - 1
                
                i = self:cycleState(i)          self:setstate(i)


                if isEven(x) then self.Effect.Offset = 0.5 end          self:setEffect("pulse")
            
            end
        
        }

	}

}