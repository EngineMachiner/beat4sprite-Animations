
local path = beat4sprite.animationPath("5th006B")           local merge = tapLua.deepMerge

local input = { Rate = 2 }          input = merge( input, ... )

return loadfile(path)(input)