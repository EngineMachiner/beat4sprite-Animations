
local path = beat4sprite.animationPath("5th022AD")          local merge = tapLua.deepMerge

local input = { States = { First = 13, Last = 16 } }        input = merge( input, ... )

return loadfile(path)(input)