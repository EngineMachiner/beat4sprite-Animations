
local Builder = beat4sprite.Builder.Retro           local ScreenQuad = beat4sprite.ScreenQuad

local Background = ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end }

local Web = Builder.Background2 {

    Texture = "1st/4 8x8.png",      Blend = "add",      Matrix = Astro.Vector(2,2),

    States = { Last = 64, Rate = 4 },         Layers = { Back = Background }

}

return Builder.Load {

    Web:input(),

    -- Butterflies.

	{

        FOV = 170,      Rate = 2,

		Texture = "1st/9 5x2.png",      States = { Last = 6, Types = { "Idle", "Position" } },

		Script = "Particles/Depth/Cascade.lua",

	}

}