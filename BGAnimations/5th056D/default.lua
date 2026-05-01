
local path = beat4sprite.animationPath("5th056B")           local merge = tapLua.deepMerge

local input = {
    
    {
        
        States = 2,     Mirror = true,

        Output = { Offset = false,         RectCommand=function(self) self:moveTextureBy( self.TileSize ) end }
    
    }

}

input = merge( input, ... )         return loadfile(path)(input)