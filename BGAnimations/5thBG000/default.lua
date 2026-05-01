
local builder = beat4sprite.Builder.Retro.Background { Texture = beat4sprite.songBackgroundPath() }

return builder:merge(...):Load()