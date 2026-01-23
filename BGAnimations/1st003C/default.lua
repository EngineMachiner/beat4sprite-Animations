
local Builder = beat4sprite.Builder.Retro           local ScreenQuad = beat4sprite.ScreenQuad

local Background = ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end }

local Wave = Builder.Background2 {
        
    Texture = "1st/9/4 5x3.png",        States = { Last = 15 },         Matrix = Astro.Vector(2,2),

    Output = { OnCommand=function(self) self.Rainbow = true end }

}

return Builder.Load {

    -- Wave.

	Wave:input(),

    -- Sprite.

    {

		Texture = "1st/5 4x2.png",     States = { Last = 8, Types = "PingPong" },       Blend = true,

		Colors = color("#808080")

	},

}