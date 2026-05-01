
local function RectCommand(self) self:addimagecoords( - self.TileSize.x / 2, 0 ) end

local builder = beat4sprite.Builder.Retro {

    Texture = "5th/2 5x4.png",      States = { First = 16, Last = 20 },
    
    Output = { RectCommand = RectCommand }

}

return builder:merge(...):Load()