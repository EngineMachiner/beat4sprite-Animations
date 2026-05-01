
local path = beat4sprite.animationPath("5th024ABB")

local merge = { Texture = "5th/5 4x3.png",      States = 7 }

return loadfile(path) { [2] = merge,    [3] = merge }