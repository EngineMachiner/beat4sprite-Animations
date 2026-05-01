
local path = beat4sprite.animationPath("5th034A")

local merge = tapLua.deepMerge          local input = { Texture = "5th/12B.png" }

input = merge( input, ... )             return loadfile(path)(input)