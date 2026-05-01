
local path = beat4sprite.animationPath("5th066A")           local merge = tapLua.deepMerge

local input = {
    
    { States = 8,   Scroll = Astro.Vector("Right") },       { Scroll = false }

}

input = merge( input, ... )         return loadfile(path)(input)