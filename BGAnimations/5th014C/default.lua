
local builder = beat4sprite.Builder.Retro {

    Texture = "5th/6 4x4.png",       States = { Last = 2 },
    
    Scroll = Astro.Vector("Up"),        Rate = 2

}

builder = builder:merge(...)

local path = beat4sprite.animationPath("5th014A")

return loadfile(path) { Layers = { Front = builder:Load() } }