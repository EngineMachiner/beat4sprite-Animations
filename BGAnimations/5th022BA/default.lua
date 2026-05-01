
local path = beat4sprite.animationPath("5th022AC")          local merge = tapLua.deepMerge

local input = { Dynamic = true,     States = { Position = true } }

input = merge( input, ... )         return loadfile(path)(input)