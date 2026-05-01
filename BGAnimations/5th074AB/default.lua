
local path = beat4sprite.animationPath("5th074")            local builder = loadfile(path)().Builder

local Rate = builder[1].States.Rate                 local input = { Rate = 1,    States = { Rate = Rate / 2 } }

builder = builder:merge { input, input }            return builder:Load()