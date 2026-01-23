
local Builder = beat4sprite.Builder.Retro           local Vector = Astro.Vector

local Magnitude = Vector { z = 45 }

return Builder.Load {

    -- Colorful sprite background.

	{ Texture = "1st/8 5x4.png",         States = 5 },

    -- Rotating mirrored stars texture.

	{

        Effect = { Magnitude = Magnitude },

		Texture = "1st/8 5x4.png",		States = 16,        Mirror = true,      Blend = "add",

        Composition = { ComposeCommand=function(self) self:zoom(1.75):diffusealpha(0.875):setEffect("spin") end },

        Output = {
            
            Scale = 0.625,      Offset = false,

            RectCommand=function(self) self.Rainbow = true end
        
        }

	}

}