
local builder = beat4sprite.Builder.Retro {

    Texture = beat4sprite.songBackgroundPath(),         Script = "Kaleidoscope/Tile"

}

return builder:merge(...):Load()