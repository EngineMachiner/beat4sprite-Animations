
local path = beat4sprite.animationPath("5th001C")           local merge = tapLua.deepMerge

local input = { { States = 4 } }            input = merge( input, ... )

return loadfile(path)(input)