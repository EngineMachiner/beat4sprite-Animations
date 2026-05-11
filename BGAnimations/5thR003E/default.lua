
local builder = beat4sprite.Builder.Retro {

    Texture = "5th/7 12x11.png",
    
    States = { Last = 128, Rate = 4 },          Output = { Offset = false }

}

return builder:merge(...):Load()