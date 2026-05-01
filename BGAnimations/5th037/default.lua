
local builder = beat4sprite.Builder.Retro {

    Texture = "5th/1 4x4.png",
    
    States = { First = 14, Last = 15 },         Output = { Offset = false }

}

return builder:merge(...):Load()