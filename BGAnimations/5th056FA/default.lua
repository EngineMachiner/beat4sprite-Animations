
local path = beat4sprite.animationPath("5th056D")           local merge = tapLua.deepMerge

local input = { { States = 3 } }            input = merge( input, ... )

return loadfile(path)(input)