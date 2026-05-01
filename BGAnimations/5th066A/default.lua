
local function RectCommand(self) self:addimagecoords( 0, self.TileSize.y / 2 ) end

local builder = beat4sprite.Builder.Retro {

    {
        
        Texture = "5th/2 5x4.png",        States = 7,
        
        Output = { RectCommand = RectCommand },     Rate = 2,
    
    },

    {
        
        Texture = "5th/2 5x4.png",      States = 4,     Rate = 2,

        Scroll = Astro.Vector("Right"),         Output = { RectCommand = RectCommand }

    }

}

return builder:merge(...):Load()