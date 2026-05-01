
local path = beat4sprite.animationPath("5th060A")

local builder = loadfile(path)().Builder

builder[2] = beat4sprite.Builder.Retro {

    Texture = "5th/3 4x4.png",
    
    States = { Last = 2 },      Scroll = Astro.Vector("UpLeft"),        Rate = 2

}

return builder:Load()