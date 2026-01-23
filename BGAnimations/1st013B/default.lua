
local scale = SCREEN_HEIGHT / 720

local Builder = beat4sprite.Builder.Retro

-- Disco ball background.

local Background = Builder.Background {
    
    Texture = "1st/3 6x13.png",         States = { Last = 75,   Rate = 4 }

}

return Builder.Load {

	Background:input(),

    -- Male dancers.

    {
        
        Texture = "1st/3 4x2.png",          States = { Last = 8 },
        
        Matrix = Astro.Vector(1,2),         Blend = "add",      Colors = color("0,1,0,1"),

        Sprite = {
            
            RotationCommand=function(self)

                local rotation = self.TilePos.y - 1         rotation = rotation % 2
                
                self:rotationy( rotation * 180 )
            
            end
        
        },

        Output = { Offset = false,      RectCommand=function(self) self:addimagecoords( 0, - 32 * scale ) end }
    
    }

}