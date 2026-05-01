
local path = beat4sprite.animationPath("5th006A")           local merge = tapLua.deepMerge

local input = { Scroll = Astro.Vector("Down") }             input = merge( input, ... )

return loadfile(path)(input)