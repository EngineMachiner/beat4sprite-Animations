
local path = beat4sprite.animationPath("5th024BC")          local merge = tapLua.deepMerge

local input = { [2] = { Reversed = true } }         input = merge( input, ... )

return loadfile(path)(input)