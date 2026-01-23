
local Builder = beat4sprite.Builder.Retro

return Builder.Load {

	{ Texture = beat4sprite.songBackgroundPath(),       Script = "Kaleidoscope/Polygon" },

    -- Female dancers.

    {

		Texture = "1st/2 4x4.png",      Matrix = Astro.Vector(1,2),

		States = { Last = 16 },     Blend = "modulate",      Colors = color("0,0,1,1"),

        Sprite = {
            
            RotationCommand=function(self)

                local rotation = self.TilePos.y - 1         rotation = rotation % 2
                
                self:rotationy( rotation * 180 )
            
            end
        
        },

        Output = { Offset = false }

	}

}