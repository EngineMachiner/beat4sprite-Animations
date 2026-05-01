
local path = beat4sprite.animationPath("5th001G")

local builder = loadfile(path)().Builder

builder[2] = beat4sprite.Builder.Retro {

    Texture = "5th/4 4x3.png",          Script = "Particles/LaneSweep",     Rate = 2,

    States = { First = 9, Last = 10, Types = { "Idle", "Position" } }
    
}

return builder:merge(...):Load()