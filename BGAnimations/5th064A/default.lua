
local function RectCommand(self)
    
    local size = self.TileSize          self:addimagecoords( 0, size.y / 2 )

end

local builder = beat4sprite.Builder.Retro {

    { Texture = "5th/2 5x4.png",    States = 6,       Output = { RectCommand = RectCommand } },

    {
        
        Texture = "5th/5 4x3.png",    States = 9,       Direction = Astro.Vector("Right"),

        Script = "Particles/Depth/Spread"
    
    }

}

return builder:merge(...):Load()