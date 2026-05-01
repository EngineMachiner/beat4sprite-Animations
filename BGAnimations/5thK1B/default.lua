
local path = beat4sprite.animationPath("5thK1A")

local builder = loadfile(path)().Builder

builder = beat4sprite.Builder.Retro {

    builder:input(),
    
    { Dynamic = true,       Texture = "5th/5 4x3.png",    States = { Last = 3, Position = true } }

}

return builder:merge(...):Load()