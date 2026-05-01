
local path = beat4sprite.animationPath("5thBG000")          local merge = tapLua.deepMerge

local input = { Scroll = Astro.Vector("Down") }         input = merge( input, ... )

return loadfile(path)(input)