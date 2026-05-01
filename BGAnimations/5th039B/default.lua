
local path = beat4sprite.animationPath("5th039A")

local builder = loadfile(path)().Builder

builder = beat4sprite.Builder.Retro {

    builder:input(),

    {
        
        Texture = "5th/6 4x3.png",      States = { Last = 2,    Types = "Position" },

        Script = "Particles/Depth/Cascade"

    }

}

return builder:merge(...):Load()