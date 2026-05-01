
local path = beat4sprite.animationPath("5th025B")           local merge = tapLua.deepMerge

local input = { [2] = { States = 10,    Script = "Particles/ScreenBounce" } }

input = merge( input, ... )         return loadfile(path)(input)