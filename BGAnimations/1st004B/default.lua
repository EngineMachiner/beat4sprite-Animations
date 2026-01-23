
local Builder = beat4sprite.Builder.Retro

return Builder.Load {

    -- Afro background.

	{

        Mirror = { x = true },

		Texture = "1st/5/1 4x19.png",       States = { Last = 75, Rate = 4 }

	},

    -- Cogs.

	{

		Texture = "1st/1 4x1.png",      States = { Last = 4, Rate = 0.25 },     Blend = "add",

		Sprite = { OnCommand=function(self) self.Rainbow = true     self:fadeHorizontally(0.125) end }
        
	}

}