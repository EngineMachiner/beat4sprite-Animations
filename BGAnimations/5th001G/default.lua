
local Builder = beat4sprite.Builder.Retro

local path = beat4sprite.animationPath("5th001A")           local builder = loadfile(path)().Builder

builder[1] = Builder { Texture = "5th/4.png",        Mirror = { x = true } }

return builder:merge(...):Load()