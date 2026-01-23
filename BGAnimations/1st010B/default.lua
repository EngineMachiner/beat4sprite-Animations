
local Builder = beat4sprite.Builder.Retro

local Background = Builder.Background { Texture = "1st/7/1.png" }

return Builder.Load {

    Background:input(),

    -- Orange text.

    {

        Dynamic = true,

        Texture = "1st/6 3x5.png",      Zoom = 2,       Blend = "add",

        Colors = Color.Orange,          States = { Last = 15 },         Matrix = Astro.Vector( 1, 3 ),

        Sprite = { OnCommand=function(self) local i = self.Index - 2        self:addy( - i * 42 ) end }

	},

}