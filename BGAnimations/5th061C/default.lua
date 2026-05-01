
local path = beat4sprite.animationPath("5th061A")

return loadfile(path) {
    
    [2] = { States = { Types = "Position" },        Script = "Particles/LaneSweep" }

}