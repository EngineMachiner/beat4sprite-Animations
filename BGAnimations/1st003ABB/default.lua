
local Builder = beat4sprite.Builder.Retro           local ScreenQuad = beat4sprite.ScreenQuad

local Background = ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end }

local Wave = Builder.Background2 {

    Texture = "1st/9/1 5x6.png",      Blend = "add",        Alpha = 0.9,
    
    States = { Last = 30 },     Layers = { Back = Background },         Matrix = Astro.Vector(2,2),

}

return Builder.Load {

    Wave:input(),

    -- Balls.

	{
        
        FOV = 170,      Rate = 2,

		Texture = "1st/8 4x1.png",      Script = "Particles/Depth/Cascade.lua",
        
        Sprite = { OnCommand=function(self) self:blend("add") end },

        States = { Last = 4, Types = { "Idle", "Position" } }

	}

}