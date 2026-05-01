
local path = beat4sprite.animationPath("5th035A")

local builder = loadfile(path)().Builder

builder[2] = beat4sprite.Builder.Retro {

    Texture = "5th/6 4x4.png",
    
    States = { First = 9, Last = 10, Types = { "Idle", "Position" } },

    Script = "Particles/LaneSweep",         Rate = 2

}

return builder:Load()