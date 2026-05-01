
local path = beat4sprite.animationPath("5th001A")

local builder = loadfile(path)().Builder

builder[1] = beat4sprite.Builder.Retro {
    
    Texture = "5th/1 2x2.png",        States = 2,         Mirror = true,

    Output = { Offset = false,         RectCommand=function(self) self:moveTextureBy( self.TileSize ) end }

}

return builder:merge(...):Load()