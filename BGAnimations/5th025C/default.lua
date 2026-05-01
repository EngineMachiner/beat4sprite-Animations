
local path = beat4sprite.animationPath("5th025B")           local types = { "Position", "Idle" }

return loadfile(path) { [2] = { States = { First = 9, Last = 10, Types = types } } }