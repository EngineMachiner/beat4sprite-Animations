
local path = beat4sprite.animationPath("5thBG007A")         local merge = tapLua.deepMerge

local Quad = beat4sprite.ScreenBlend("InvertDest") .. { OnCommand=function(self) self:Center() end }

local input = {

    { Texture = beat4sprite.songBackgroundPath(),       Layers = { Front = Quad } }

}

input = merge( input, ... )         return loadfile(path)(input)