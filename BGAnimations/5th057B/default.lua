
local path = beat4sprite.animationPath("5th057A")           local Direction = Astro.Vector("Right")

return loadfile(path) { [2] = { Direction = Direction } }