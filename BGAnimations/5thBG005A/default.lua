
local builder = beat4sprite.Builder.Retro {

    Texture = beat4sprite.songBackgroundPath(),         Script = "Morph/Wag.lua"

}

return builder:merge(...):Load()