
local Builder = beat4sprite.Builder.Retro

local Background = Builder.Background2 {
    
    Texture = "4th/1 6x4.png",      States = { Last = 24,  Rate = 0.5 },

}

return Builder.Load {

	Background:input(),

	{
		Texture = "4th/2 5x4.png",      States = 11,
        
        Effect = { Magnitude = Astro.Vector { z = -45 } },

        Sprite = { OnCommand=function(self) self:setEffect("spin") end },

		Reversed = true,    Script = "Particles/Depth/Cascade.lua"

	}

}