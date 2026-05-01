
local Vector = Astro.Vector

local path = beat4sprite.animationPath("5th010AC")          local merge = tapLua.deepMerge

local input = { Scroll = Astro.Vector("Left") }             

input = merge( input, ... )         return loadfile(path)(input)