
local path = beat4sprite.animationPath("5thK1B")        local input = { States = { Position = Astro.Vector(-1,-1) } }

return loadfile(path) { [2] = input }