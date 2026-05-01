
local builder = beat4sprite.Builder.Retro {

    Texture = "5th/6 4x3.png",
    
    States = 12,        Scroll = Astro.Vector("Up"),        Rate = 2

}

return builder:Load()