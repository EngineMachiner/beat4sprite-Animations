
local Background = beat4sprite.ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end }

local Output = {

    RectCommand=function(self) self:addimagecoords( self.TileSize.x / 2, 0 ) end

}

local builder = beat4sprite.Builder.Retro {

    {
        
        Texture = "5th/1 4x3.png",
        
        States = { First = 7, Last = 8, Rate = 0.5 },       Layers = { Back = Background },
    
        Output = Output,

    },

    {

        Texture = "5th/1 4x4.png",      Scroll = Astro.Vector("Right"),
        
        States = { Last = 2, Rate = 0.5 },      Rate = 2,       Output = { Offset = false }

    }

}

return builder:merge(...):Load()