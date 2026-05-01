
local path = beat4sprite.animationPath("5th060A")

return loadfile(path) { [2] = { Direction = Astro.Vector("Down") } }