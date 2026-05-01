
local path = beat4sprite.animationPath("5th001C")

return loadfile(path) { [2] = { Scroll = Astro.Vector("Right") } }