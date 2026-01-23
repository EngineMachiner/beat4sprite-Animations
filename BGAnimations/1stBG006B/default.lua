
-- Bouncing DANCE letters.

local Builder = beat4sprite.Builder.Retro           local QuadBuilder = Builder {}

local Background = beat4sprite.ScreenQuad() .. {
    
    OnCommand=function(self) self:init(QuadBuilder):Center():blend("modulate")        self.Rainbow = true end,

    UpdateFunctionCommand=function(self) self:updateRainbow() end

}

return Builder.Load {

    {
        
        Texture = beat4sprite.songBackgroundPath(),       Script = "Kaleidoscope/Polygon",

        Layers = { Front = Background }
    
    },

	{
		Texture = "1st/2 5x1.png",      Script = "Particles/Depth/Bounce",

        States = { Last = 5,    Types = { "Idle", "Position" } }

	}

}