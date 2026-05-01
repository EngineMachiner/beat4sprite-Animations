
local builder = beat4sprite.Builder.Retro {

    Texture = beat4sprite.songBackgroundPath(),     Script = "Morph/Pulse"

}

return builder:merge(...):Load()