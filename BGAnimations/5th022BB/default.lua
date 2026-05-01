
local path = beat4sprite.animationPath("5th022AD")          local merge = tapLua.deepMerge

local input = {
    
    Dynamic = true,

    Texture = "5th/8 4x3.png",      States = { First = 9, Last = 12, Position = true }

}

input = merge( input, ... )         return loadfile(path)(input)