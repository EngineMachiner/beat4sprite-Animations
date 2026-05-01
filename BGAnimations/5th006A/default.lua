
local builder = beat4sprite.Builder.Retro {
    
    Dynamic = true,         Scroll = Astro.Vector("Up"),

    Texture = "5th/3 1x4.png",            States = { Last = 4,      Position = true },

    Output = { RectCommand=function(self) self:addimagecoords( self.TileSize.x / 2, 0 ) end } 

}

return builder:merge(...):Load()