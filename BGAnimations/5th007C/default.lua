
local path = beat4sprite.animationPath("5th007B")

local Scissors = beat4sprite.Builder.Retro.Load {

    Texture = "5th/6 4x4.png",      States = { First = 3,   Last = 4 },     Rate = 2,

    Script = "Particles/LaneSweep"

}

return loadfile(path) { Layers = { Front = Scissors } }
