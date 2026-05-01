
local path = beat4sprite.animationPath("5th024AA")          local merge = tapLua.deepMerge

local input = { [2] = { Script = "Particles/Depth/Helix" } }

input = merge( input, ... )        return loadfile(path)(input)