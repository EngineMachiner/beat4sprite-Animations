
local path = beat4sprite.animationPath("5th004A")           local merge = tapLua.deepMerge

local input = {
    
    Texture = "5th/7 4x4.png",      States = 6,

    Output = { OnCommand=function(self) self.Rainbow = true end }

}

input = merge( input, ... )         return loadfile(path)(input)