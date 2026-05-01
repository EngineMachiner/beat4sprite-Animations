
local path = beat4sprite.animationPath("5th024AB")          local merge = tapLua.deepMerge

local input = { [2] = { Texture = "5th/5 4x3.png",      States = 7 } }

input = merge( input, ... )         return loadfile(path)(input)