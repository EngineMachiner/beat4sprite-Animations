
local Builder = beat4sprite.Builder.Retro           local Vector = Astro.Vector

return Builder.Load {

	{
        
        Texture = "4th/1.png",      Scroll = { Direction = Vector("Left"),        Reverse = 0.5 },

        Output = { RectCommand=function(self) self:addimagecoords( - SCREEN_CENTER_X, 0 ) end }
    
    },

	{	

        Dynamic = true,     Texture = "4th/1 1x4.png",      Blend = "add",
        
        Matrix = Vector( 1, 3.75 ),        States = { Last = 4,    Types = "Random" },

        Sprite = { OnCommand=function(self) local i = self.Index - 1        self:addy( i * 20 ) end }
        
	}

}