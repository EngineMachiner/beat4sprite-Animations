
local builder = beat4sprite.Builder.Retro {

    Texture = beat4sprite.songBackgroundPath(),         Script = "Kaleidoscope/Polygon"

}

return builder:merge(...):Load()