
local builder = beat4sprite.Builder.Retro {

    Texture = "5th/1 12x11.png",        Scroll = Astro.Vector("Up"),
    
    States = { Last = 128, Rate = 2 },          Output = { Offset = false }

}

return builder:merge(...):Load()