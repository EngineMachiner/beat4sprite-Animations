
local path = beat4sprite.animationPath("5th034E")

local Actor = loadfile(path) { Texture = "5th/12.png" }             local builder = Actor.Builder

local Stars = builder.Layers.Front.Builder:merge { Scroll = Astro.Vector("UpLeft") }

builder = builder:merge { Layers = { Front = Stars:Load() } }

return builder:Load()