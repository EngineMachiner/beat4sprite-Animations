
local path = beat4sprite.animationPath("5th065")            local merge = tapLua.deepMerge

local input = {

    { Texture = "5th/1.png" },     { Texture = beat4sprite.songBackgroundPath() }

}

input = merge( input, ... )         return loadfile(path)(input)