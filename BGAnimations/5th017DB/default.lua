local path = beat4sprite.animationPath("5th017DA")          local merge = tapLua.deepMerge

local input = { [2] = { Scroll = Astro.Vector("Down") } }           input = merge( input, ... )

return loadfile(path)(input)