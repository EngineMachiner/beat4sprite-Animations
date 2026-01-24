
local Builder = beat4sprite.Builder.Retro

return Builder.Load {

    -- Afro background.

	{

        Mirror = { x = true },

		Texture = "1st/5/1 4x19.png",       States = { Last = 75, Rate = 4 }

	},

    -- Vibration text.

	{

        Dynamic = true,

		Texture = "1st/7 1x2.png",      States = { Last = 2 },          Matrix = Astro.Vector( 1, 3.75 ),
        
        Sprite = { OnCommand=function(self) local i = self.Index - 1        self:addy( i * 20 ) end }

	}

}