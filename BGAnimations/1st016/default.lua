
-- Tiled blue circles and UFOs bouncing.

local Builder = beat4sprite.Builder.Retro

return Builder.Load {

	{ Texture = "1st/10/2 4x2.png",       States = { Last = 8,      Rate = 0.5 } },

	{

		Texture = "1st/8 5x4.png",
        
        States = 17,        Script = "Particles/ScreenBounce.lua"

	}

}