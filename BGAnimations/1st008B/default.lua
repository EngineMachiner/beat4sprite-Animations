
local animationPath = beat4sprite.animationPath("1st008")

return loadfile(animationPath) { [2] = { States = 7 } }