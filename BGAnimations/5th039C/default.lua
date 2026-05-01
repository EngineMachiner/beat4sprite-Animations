
local path = beat4sprite.animationPath("5th039B")

return loadfile(path) {
    
    [2] = {
        
        Texture = "5th/6 4x4.png",
        
        Rate = 2,       States = 9,     Script = "Particles/LaneSweep"
    
    }

}