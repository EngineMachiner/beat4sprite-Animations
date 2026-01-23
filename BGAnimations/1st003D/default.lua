
local Builder = beat4sprite.Builder.Retro           local Vector = Astro.Vector

local Wave = Builder.Background2 {

    Texture = "1st/9/4 5x3.png",    States = { Last = 15 },         Matrix = Vector(2,2),

    Output = { OnCommand=function(self) self.Rainbow = true end }

}

return Builder.Load {

    Wave:input(),

    -- Explosions.

	{

        FOV = 170,      Rate = 2,       Spin = true,        Effect = { Magnitude = Vector { z = - 45 / 2 } },

		Texture = "1st/8/1 4x4.png",     States = { Last = 8 },     Reversed = true,    Quantity = 9,   Waves = 4,

		Display = function(i) return i % 6 == 0 end,        Sprite = { OnCommand=function(self) self:blend("add"):setstate(3) end },

		Script = "Particles/Depth/Helix.lua"

	}

}