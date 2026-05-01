
local builder = beat4sprite.Builder.Retro {

    Matrix = Astro.Vector( 2, 2 ),

    Texture = "5th/6 4x3.png",          States = { First = 7,   Last = 8,   Position = true },

    Output = { RectCommand=function(self) self:addimagecoords( self.TileSize.x / 2, 0 ) end }

}

return builder:merge(...):Load()