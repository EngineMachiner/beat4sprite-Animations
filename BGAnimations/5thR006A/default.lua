
local builder = beat4sprite.Builder.Retro {

    Texture = "5th/1 12x14.png",
    
    States = { Last = 160, Rate = 8 },          Output = { Offset = false }

}

return builder:merge(...):Load()