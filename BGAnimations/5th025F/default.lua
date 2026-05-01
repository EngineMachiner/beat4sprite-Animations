
local path = beat4sprite.animationPath("5th025D")           local types = { "Idle", "Position" }

return loadfile(path) { [2] = { States = { First = 9, Last = 10, Types = types } } }