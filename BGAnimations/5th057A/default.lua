
local merge = tapLua.deepMerge

local Direction = Astro.Vector("Down")          local path = beat4sprite.animationPath("5th056A")

local input = {
    
    {
        
        States = 3,
        
        Output = { Offset = false,         RectCommand=function(self) self:moveTextureBy( self.TileSize ) end }
    
    },
    
    { States = 10, Direction = Direction }

}

input = merge( input, ... )         return loadfile(path)(input)