
local Builder = beat4sprite.Builder.Retro

return Builder.Load {

    -- Tiled sprite.

	{

		Texture = "1st/8 5x4.png",      States = 4,

        Output = { OnCommand=function(self) self.Rainbow = true end }

	},

    -- Text animation.

	{

        Dynamic = true,

        Texture = "1st/6 3x5.png",      Zoom = 2,       Blend = "add",

        Colors = Color.Orange,          States = { Last = 15 },         Matrix = Astro.Vector( 1, 3 ),

        Sprite = { OnCommand=function(self) local i = self.Index - 2        self:addy( - i * 42 ) end }

	},

}