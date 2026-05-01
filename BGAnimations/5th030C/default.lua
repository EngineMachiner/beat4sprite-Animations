
local path = beat4sprite.animationPath("5th030B")           local merge = tapLua.deepMerge

local input = { [2] = { States = 10 } }         input = merge( input, ... )

return loadfile(path)(input)