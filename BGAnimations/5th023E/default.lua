
local path = beat4sprite.animationPath("5th023C")

return loadfile(path) { [2] = { States = { Last = 10 } } }