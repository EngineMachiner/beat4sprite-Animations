
local Builder = beat4sprite.Builder.Retro           local Vector = Astro.Vector

local Colorful = { OnCommand=function(self) self.Rainbow = true end }

local Background = Builder.Background {
    
    Texture = "4th/2.png",      Output = Colorful,

    Effect = { Period = 2 }

}

return Builder.Load {

	{	

		Texture = "4th/2.png",      Script = "Morph/Flag",
        
        Sprite = Colorful,      Layers = { Back = Background:Load() }

	},

	{	

		Texture = "4th/1 5x4.png",      States = 1,     Direction = Vector("Left"),

		Script = "Particles/Depth/Spread.lua"

	},

	{	

		Texture = "4th/1 5x4.png",      States = { First = 2,   Last = 15 },     Direction = Vector("Left"),

		Script = "Particles/Depth/Spread.lua",      Quantity = 11,

        Sprite = { OnCommand=function(self) self:blend("add") end }

	}

}