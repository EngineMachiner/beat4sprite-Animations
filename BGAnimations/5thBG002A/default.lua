
local builder = beat4sprite.Builder.Retro {

    Texture = beat4sprite.songBackgroundPath(),     Script = "Morph/Flag"

}

return builder:merge(...):Load()