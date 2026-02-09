
local Builder = beat4sprite.Builder.Retro           local Vector = Astro.Vector

local Background = Builder.Background {
        
    Texture = "4th/6.png",      Scroll = { Direction = Vector("Left"),        Reverse = 0.5 },

    Output = { RectCommand=function(self) self:addimagecoords( - SCREEN_CENTER_X, 0 ) end }

}

return Background:Load()