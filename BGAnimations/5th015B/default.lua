
local path = beat4sprite.animationPath("5th015A")

return loadfile(path) { [2] = { Direction = Astro.Vector("Up") } }