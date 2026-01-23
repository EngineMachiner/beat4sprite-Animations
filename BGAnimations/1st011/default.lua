
local Blue = color("0,0,1,1")           local Builder = beat4sprite.Builder.Retro

local States = { { Frame = 1 }, { Frame = 3 } }

return Builder.Load {

    -- Countdown 2 and 4 switching.

    {

        Texture = "1st/3 4x1.png",

        Sprite = { OnCommand=function(self) self:SetStateProperties(States) end }

    },

    -- Electric groove.

	{ Texture = "1st/2.png",      Mirror = true,      Colors = Blue },
    
}