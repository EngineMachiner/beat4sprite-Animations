
local path = beat4sprite.animationPath("5th021A")               local builder = loadfile(path)().Builder

builder = builder:merge { [2] = { Visibility = false } }        builder[3] = nil

return builder:merge(...):Load()