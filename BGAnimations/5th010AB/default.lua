
local path = beat4sprite.animationPath("5th010AA")          local merge = tapLua.deepMerge

local input = { Scroll = Astro.Vector("Right"),     Rate = 2 }          input = merge( input, ... )

return loadfile(path)(input)