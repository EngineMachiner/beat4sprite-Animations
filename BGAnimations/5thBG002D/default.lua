
local path = beat4sprite.animationPath("5thBG002A")         local merge = tapLua.deepMerge

local input = { Type = 2 }          input = merge( input, ... )

return loadfile(path)(input)