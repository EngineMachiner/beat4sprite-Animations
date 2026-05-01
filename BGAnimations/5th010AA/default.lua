
local builder = beat4sprite.Builder.Retro {

    Texture = "5th/5 4x4.png",
    
    States = { First = 9, Last = 12 },      Output = { Offset = false }

}

return builder:merge(...):Load()