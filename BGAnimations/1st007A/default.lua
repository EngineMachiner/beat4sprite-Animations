
local ScreenQuad = beat4sprite.ScreenQuad

local Builder = beat4sprite.Builder.Retro           local Vector = Astro.Vector

local Background = ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end }

return Builder.Load {

    -- City background scrolling.

	{
        
        Texture = "1st/1/1.png",        Scroll = Vector("Left"),      Rate = 2,

        Layers = { Back = Background },         Alpha = 0.75
    
    },

    -- Tiled sprite.

    { Texture = "1st/8 5x4.png",      States = 5,       Blend = "add" }

}