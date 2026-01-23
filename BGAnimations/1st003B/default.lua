
local Builder = beat4sprite.Builder.Retro           local blue = color("0,0,1,1")

local Wave = Builder.Background2 {
        
    Texture = "1st/9/2 5x6.png",        States = { Last = 30 },         Matrix = Astro.Vector(2,2)

}

return Builder.Load {

	Wave:input(), -- Red wave.

    -- Stars.

	{

        FOV = 170,      Rate = 2,

		Texture = "1st/8 5x4.png",     States = 16,     Reversed = true,    Quantity = 9,   Waves = 4,

		Spin = true,        Effect = { FixedAngle = true },         Display = function(i) return i % 6 == 0 end,

        Sprite = { OnCommand=function(self) self:diffuse(blue) end },

		Script = "Particles/Depth/Helix.lua"

	}

}