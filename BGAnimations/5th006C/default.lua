
local path = beat4sprite.animationPath("5th006A")

local merge = tapLua.deepMerge          local Background = loadfile(path)(...)

return beat4sprite.Builder.Retro.Load {

    Texture = "5th/7 4x3.png",      Layers = { Back = Background },     Rate = 2,

    States = { Last = 12 },         Script = "Particles/LaneSweep"

}