
local path = beat4sprite.animationPath("5th008AA")          local builder = loadfile(path)().Builder

builder[2] = beat4sprite.Builder.Retro {

    Texture = "5th/1 4x3.png",          States = { First = 5, Last = 6 },       Rate = 2,

    Script = "Particles/LaneSweep"

}

return builder:Load()