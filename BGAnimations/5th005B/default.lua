
local path = beat4sprite.animationPath("5th005")

return loadfile(path) {
    
    [2] = { Script = "Particles/Depth/Spread",      Colors = { Color.White, color("#808080") } }

}