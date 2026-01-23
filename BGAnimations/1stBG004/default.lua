

local i = 0         local Quantity = 9

local Builder = beat4sprite.Builder         local SongBackground = Builder.SongBackground

Builder = Builder.Retro

return Builder.Load {

	SongBackground(),

    -- Dance letters.

	{

        FOV = 170,      Rate = 2,       Reversed = true,    Quantity = Quantity,   Waves = 4,

		Texture = "1st/2 5x1.png",     States = { Last = 5, Types = "Idle" },

		Spin = true,        Display = function(i) return i % 6 == 0 end,

        Sprite = {
            
            OnCommand=function(self)

                i = self:cycleState(i)       self:setstate(i)       i = i + 1
                

                local i = self.Index + 1        self:rotationz( i * 360 / Quantity )
            
            end
        
        },

		Script = "Particles/Depth/Helix"
        
	}

}