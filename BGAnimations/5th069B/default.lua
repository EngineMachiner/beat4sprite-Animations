
local path = beat4sprite.animationPath("5th069A")

local builder = loadfile(path)().Builder

builder = beat4sprite.Builder.Retro {

    builder:input(),

    { Texture = "5th/2 5x4.png",      States = 2,     Script = "Particles/Depth/Cascade" }

}

return builder:merge(...):Load()