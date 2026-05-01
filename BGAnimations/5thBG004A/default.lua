
local builder = beat4sprite.Builder.Retro {

    Texture = beat4sprite.songBackgroundPath(),         Script = "Morph/Bob.lua"

}

return builder:merge(...):Load()