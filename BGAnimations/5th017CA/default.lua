
local path = beat4sprite.animationPath("5th017AA")          local merge = tapLua.deepMerge

local input = { { Texture = "5th/2 5x4.png",        States = 6,     Mirror = false } }

input = merge( input, ... )         return loadfile(path)(input)