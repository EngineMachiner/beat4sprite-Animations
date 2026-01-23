
local Builder = beat4sprite.Builder.Retro

return Builder.Load {

    -- Fading city background.

	{
        
        Effect = { Period = 4 },

        Texture = "1st/1/2.png",        Colors = { Color.White, Color.Orange },

        Output = { OnCommand=function(self) self:setEffect("diffuseshift") end }
    
    },

    -- Bouncing disks.

	{ Texture = "1st/8 5x4.png",		States = 2,         Script = "Particles/ScreenBounce.lua" }

}