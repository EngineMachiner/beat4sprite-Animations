
local path = beat4sprite.animationPath("5thR001A")

local builder = loadfile(path)().Builder

builder = beat4sprite.Builder.Retro {

    builder:input(),

    {
        
        Texture = "5th/7 4x3.png",    States = { Last = 12 },

        Script = "Particles/Depth/Helix"
    
    }

}

return builder:merge(...):Load()