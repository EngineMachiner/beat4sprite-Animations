
local builder = beat4sprite.Builder.Retro {

    Texture = "5th/1 6x11.png",         States = { Last = 64 },         Output = { Offset = false }

}

return builder:merge(...):Load()