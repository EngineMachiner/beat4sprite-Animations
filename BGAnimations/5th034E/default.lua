
local Vector = Astro.Vector         local merge = tapLua.deepMerge

local Stars = beat4sprite.Builder.Retro.Load {

    Texture = "5th/7 4x3.png",
    
    States = { Last = 12 },         Scroll = Vector("Left"),        Rate = 2,

}

local path = beat4sprite.animationPath("5th034C")

local input = { Scroll = false,     Layers = { Front = Stars } }

input = merge( input, ... )         return loadfile(path)(input)