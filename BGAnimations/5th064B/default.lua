
local path = beat4sprite.animationPath("5th064A")

return loadfile(path) { [2] = { Direction = Astro.Vector("Down") } }