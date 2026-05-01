
local path = beat4sprite.animationPath("5th025A")

return loadfile(path) { [2] = { Direction = Astro.Vector("Up") } }