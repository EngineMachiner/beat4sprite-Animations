
local path = beat4sprite.animationPath("5th014A")

local Oranges = beat4sprite.Builder.Retro.Load {

    Texture = "5th/6 4x3.png",          States = { Last = 2 },

    Script = "Particles/Depth/Helix"

}

return loadfile(path) { Layers = { Front = Oranges } }