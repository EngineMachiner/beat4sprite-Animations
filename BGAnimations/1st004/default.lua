
local scale = SCREEN_HEIGHT / 720

local Builder = beat4sprite.Builder.Retro           local ScreenQuad = beat4sprite.ScreenQuad

local Background = ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end }

local Cogs = Builder.Background {

    Texture = "1st/1 4x1.png",      States = { Last = 4, Rate = 0.25 },

    Sprite = { OnCommand=function(self) self:fadeHorizontally(0.125) end },

    Layers = { Back = Background },     Mirror = false

}

local builder = Builder {

    Cogs:input(),

    -- Female dancers.

    {

		Texture = "1st/2 4x4.png",      Matrix = Astro.Vector(1,2),

		States = { Last = 16 },     Blend = "add",      Colors = color("0,1,0,1"),

        Sprite = {
            
            RotationCommand=function(self)

                local rotation = self.TilePos.y - 1         rotation = rotation % 2
                
                self:rotationy( rotation * 180 )
            
            end
        
        },

        Output = { Offset = false,      RectCommand=function(self) self:addimagecoords( 0, - 32 * scale ) end }

	}

}

return builder:merge(...):Load()