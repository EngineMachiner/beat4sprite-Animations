
local path = beat4sprite.animationPath("5th061A")

return loadfile(path) {
    
    [2] = {
        
        Direction = Astro.Vector("Up"),         States = { Types = "Position" },

        Script = "Particles/Depth/Spread"
    
    }

}