
local builder = beat4sprite.Builder.Retro {

    Texture = "5th/1 4x4.png",

    States = { First = 5,   Last = 6 },         Output = { Offset = false }

}

return builder:merge(...):Load()