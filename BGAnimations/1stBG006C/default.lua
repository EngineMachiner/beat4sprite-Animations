
-- Afro.

local Builder = beat4sprite.Builder.Retro           local QuadBuilder = Builder {}

local Background = beat4sprite.ScreenQuad() .. {
    
    OnCommand=function(self) self:init(QuadBuilder):Center():blend("modulate")        self.Rainbow = true end,

    UpdateFunctionCommand=function(self) self:updateRainbow() end

}

return Builder.Load {

    {
        
        Texture = beat4sprite.songBackgroundPath(),       Script = "Kaleidoscope/Polygon",

        Layers = { Back = Quad }
    
    },

	{

        Mirror = { x = true },      Blend = "add",

		Texture = "1st/5/1 4x19.png",       States = { Last = 75, Rate = 4 }

	}

}