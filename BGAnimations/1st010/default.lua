
local Builder = beat4sprite.Builder.Retro

local Background = Builder.Background { Texture = "1st/7/1.png" } -- DANCE background.

return Builder.Load {

    Background:input(),

    -- Disks and flowers.

	{

		Texture = "1st/8 5x4.png",      States = { Last = 2 },      Effect = { Magnitude = Astro.Vector { z = -45 } },

		Sprite = { OnCommand=function(self) self:setEffect("spin") end },
        
		Script = "Particles/Depth/Cascade",

	}

}