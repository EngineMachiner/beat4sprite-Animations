
local path = beat4sprite.animationPath("5th069B")

local builder = loadfile(path)().Builder

builder = builder:merge { [2] = { Script = "Particles/Depth/Bounce" } }

return builder:merge(...):Load()