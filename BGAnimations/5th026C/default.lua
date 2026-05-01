
local path = beat4sprite.animationPath("5th026A")

return loadfile(path) { [2] = { Direction = Astro.Vector("Up") } }