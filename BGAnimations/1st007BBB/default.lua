
local i = 0

local Builder = beat4sprite.Builder.Retro           local Vector = Astro.Vector

return Builder.Load {

    -- Orange city background.

	{ Texture = "1st/1/2.png",        Scroll = Vector("Left"),      Rate = 2 },

    -- Dance letters.

	{

        FOV = 170,      Rate = 2,       Reversed = true,    Quantity = 9,   Waves = 4,

		Texture = "1st/2 5x1.png",     States = { Last = 5, Types = "Idle" },

		Spin = true,        Display = function(i) return i % 6 == 0 end,

        Sprite = {
            
            OnCommand=function(self)

                i = self:cycleState(i)       self:setstate(i)       i = i + 1
                

                local i = self.Index + 1        self:rotationz( i * 360 / 9 )
            
            end
        
        },

		Script = "Particles/Depth/Helix"
        
	}

}