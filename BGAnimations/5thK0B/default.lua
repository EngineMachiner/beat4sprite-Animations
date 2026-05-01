
local path = beat4sprite.animationPath("5thK0A")

local input = tapLua.shadersEnabled() and { Rate = -1 } or { Scroll = Astro.Vector(-1) }

return loadfile(path)(input)