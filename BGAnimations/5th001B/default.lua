
local path = beat4sprite.animationPath("5th001A")

return loadfile(path) { [2] = { Scroll = Astro.Vector("Right") } }