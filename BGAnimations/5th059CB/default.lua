
local Direction = Astro.Vector("DownRight")

local path = beat4sprite.animationPath("5th059CA")

return loadfile(path) { [2] = { Scroll = Direction } }