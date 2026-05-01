
local path = beat4sprite.animationPath("5th044A")           local merge = tapLua.deepMerge

local input = {

    [2] = { Direction = Astro.Vector("Up"),         Script = "Particles/Depth/Spread" }

}

input = merge( input, ... )        return loadfile(path)(input)