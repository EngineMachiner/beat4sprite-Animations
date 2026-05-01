
local path = beat4sprite.animationPath("5th007A")           local merge = tapLua.deepMerge

local input = { Scroll = Astro.Vector("Left"),      Rate = 2 }

input = merge( input, ... )         return loadfile(path)(input)