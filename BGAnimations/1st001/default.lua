
local Builder = beat4sprite.Builder.Retro           local ScreenQuad = beat4sprite.ScreenQuad

local Background = ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end }

return Builder.Load {

    -- Text animation.

    {

        Dynamic = true,

        Texture = "1st/6 3x5.png",              Zoom = 2,       Blend = "add",

        Colors = Color.Orange,                  States = { Last = 15 },
        
        Layers = { Back = Background },         Matrix = Astro.Vector( 1, 3 ),

        Sprite = { OnCommand=function(self) local i = self.Index - 2        self:addy( - i * 42 ) end }

	},

    -- Colorful skulls.

	{ Texture = "1st/6/2 15x5.png",      Blend = "add",      States = { Last = 75, Rate = 4 } }

}