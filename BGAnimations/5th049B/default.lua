
local path = beat4sprite.animationPath("5th049A")

local builder = loadfile(path)().Builder

builder = beat4sprite.Builder.Retro {

    builder:input(),

    {

        Texture = "5th/4 4x3.png",          States = 9,

        Direction = Astro.Vector("Right"),          Script = "Particles/Depth/Spread"

    }

}

return builder:merge(...):Load()