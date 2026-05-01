
local path = beat4sprite.animationPath("5thBG007A")         local merge = tapLua.deepMerge

local input = { { Texture = "5th/9.png" } }                 input = merge( input, ... )

return loadfile(path)(input)