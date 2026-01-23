
local Builder = beat4sprite.Builder.Retro

return Builder.Load {

    {

        

    },

    {
        
        ScreenScale = true,

		Texture = "1st/Masks/2 6x5.png",        States = { Last = 30, Rate = 2 },

        Output = { OnCommand=function(self) self:MaskSource() end }

	},

}

local parameters = beat4sprite.create {
	
	Mask = {
		File = "1st/Sprites/Clock2 6x5.png",		States = { 1, 30, Rate = 4 },
		Zoom = 5
	},

	Set = {

		{ File = beat4sprite.GAMESTATE.getSongBG() },			{ File = "1st/Backgrounds/F.png" },
			
		{ 
			File = "1st/Backgrounds/D2.png", 
			Run = function(self) self:cropleft(0.375):cropright(0.375) end
		},

		{ File = "1st/Sprites/HSV/A 4x1.png", States = 4 }

	},

	Script = "Cyclic/Mask"

}

return parameters:tweak(...):Load()