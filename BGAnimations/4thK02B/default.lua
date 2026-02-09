
local Builder = beat4sprite.Builder.Retro           local Vector = Astro.Vector

local animationPath = beat4sprite.animationPath("4thK02A")

local builder = loadfile(animationPath)().Builder           builder[2] = nil

return builder:Load()