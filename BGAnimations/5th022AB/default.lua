
local path = beat4sprite.animationPath("5th022AD")          local merge = tapLua.deepMerge

local input = { Texture = "5th/8 4x3.png",      States = { First = 5, Last = 8 } }

input = merge( input, ... )         return loadfile(path)(input)