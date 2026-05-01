
local path = beat4sprite.animationPath("5th026A")           local merge = tapLua.deepMerge

local input = { [2] = { Script = "Particles/ScreenBounce" } }

input = merge( input, ... )

return loadfile(path)(input)