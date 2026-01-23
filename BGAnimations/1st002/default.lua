
local Builder = beat4sprite.Builder.Retro

return Builder.Load {

    -- Tiled white sprite.

	{ Texture = "1st/8 5x4.png",     States = 4 },

    -- Butterflies.

	{

        FOV = 170,      Rate = 2,

		Texture = "1st/9 5x2.png",      States = { Last = 6, Types = { "Idle", "Position" } },

		Script = "Particles/Depth/Cascade.lua",

	}

}