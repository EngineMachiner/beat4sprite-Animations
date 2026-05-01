
local path = beat4sprite.animationPath("5thBG000")          local merge = tapLua.deepMerge

local input = { Scroll = Astro.Vector("Up") }         input = merge( input, ... )

return loadfile(path)(input)