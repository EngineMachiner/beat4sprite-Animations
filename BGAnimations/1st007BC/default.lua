
local Builder = beat4sprite.Builder.Retro

local Blue = color("0,0,1,1")           local Vector = Astro.Vector

local builder = Builder {

    -- Orange city background.

	{ Texture = "1st/1/2.png",        Scroll = Vector("Left"),      Rate = 2 },

    -- Electric groove.

	{ Texture = "1st/2.png",      Mirror = true,      Colors = Blue }

}

return builder:merge(...):Load()