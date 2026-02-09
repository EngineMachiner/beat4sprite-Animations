
local path = beat4sprite.animationPath("NXBG002B")

local shadersEnabled = tapLua.shadersEnabled()      local Period = shadersEnabled and 4 or 8

return loadfile(path) { Script = "Morph/Wag",      Effect = { Period = Period } }