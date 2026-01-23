
local Builder = beat4sprite.Builder.Retro

-- Disco ball background.

local Background = Builder.Background {
    
    Texture = "1st/3 6x13.png",         States = { Last = 75,   Rate = 4 }

}

return Builder.Load {

	Background:input(),

    -- UFOs.

	{

		Texture = "1st/8 5x4.png",
        
        Centered = true,        States = 17,        Quantity2 = 4,

        Group = {
            
            OnCommand=function(self) self.Sleep = 0.5 end,

            PrepareCommand=function(self) self:xy( 0, SCREEN_HEIGHT / 4 ) end
        
        },

        Sprite = {
            
            OnCommand=function(self)
            
                local x = self.Index - 2          self:addx( x * 32 ):y(0):z(0)
        
            end
        
        },

        Script = "Particles/Depth/Cascade.lua"
        
	}

}