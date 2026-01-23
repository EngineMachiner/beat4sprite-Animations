
local Builder = beat4sprite.Builder.Retro

local Background = Builder.Background {
    
    Texture = "1st/7/1 6x13.png",           States = { Last = 75, Rate = 4 }

}

return Builder.Load {

    -- Dance world background.

    Background:input(),

    -- Explosion sprites.

	{

        FOV = 170,      Rate = 2,       Reversed = true,

		Texture = "1st/8/1 4x4.png",        Blend = "add",      States = { Last = 8 },

        Sprite = { OnCommand=function(self) self:setstate(3) end },
        
        Script = "Particles/Depth/Cascade.lua"

	}

}