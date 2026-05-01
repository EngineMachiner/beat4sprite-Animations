
local path = beat4sprite.animationPath("5th023B")           local merge = tapLua.deepMerge

local input = {

    [2] = { Texture = "5th/1 4x4.png",       States = 9,    Script = "Particles/ScreenBounce" }

}

input = merge( input, ... )         return loadfile(path)(input)