
local Builder = beat4sprite.Builder.Retro           local Vector = Astro.Vector

local Background = Builder.Background2 {
    
    Texture = "4th/1 12x14.png",        States = { Last = 160,      Rate = 4 }

}

return Builder.Load {

	Background:input(),

    {

        Dynamic = true,

        Texture = "4th/1 5x4.png",      Blend = "add",
        
        Scroll = Vector("Up"),        Rate = 2,       States = { First = 2,  Last = 15,  Rate = 0.5 },
        
        Sprite = { OnCommand=function(self) local i = math.random(14)       self:setstate( i - 1 ) end }

    }

}