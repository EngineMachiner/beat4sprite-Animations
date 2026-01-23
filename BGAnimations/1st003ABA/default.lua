
local Builder = beat4sprite.Builder.Retro           local ScreenQuad = beat4sprite.ScreenQuad

local Background = ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end }

local Wave = Builder.Background2 {

    Texture = "1st/9/1 5x6.png",      Blend = "add",        Alpha = 0.9,
    
    States = { Last = 30 },     Layers = { Back = Background },         Matrix = Astro.Vector(2,2)

}

return Builder.Load {

    Wave:input(),

    -- Lasers.

	{

        Texture = "1st/7.png",      FOV = 170,      Rate = 2,       Reversed = true,

		Quantity2 = function() return 1 end,        Script = "Particles/Depth/Cascade.lua",

        Sprite = { OnCommand=function(self) self:rotationx(90):zoomx(0.5):blend("add") end }

	}

}