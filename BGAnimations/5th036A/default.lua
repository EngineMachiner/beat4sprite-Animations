
local RectCommand = function(self) self:addimagecoords( 0, self.TileSize.y / 2 ) end

local Output = { RectCommand = RectCommand }

local Texture = "5th/2 5x4.png"         local Vector = Astro.Vector

local builder = beat4sprite.Builder.Retro {

    {
        
        Texture = Texture,      States = 9,
        
        Scroll = Vector("UpLeft"),      Rate = 2,       Output = Output
    
    },

    { Texture = Texture,      Output = Output }

}

return builder:merge(...):Load()