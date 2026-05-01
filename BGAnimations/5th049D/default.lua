
local path = beat4sprite.animationPath("5th049B")           local Types = { "Idle", "Position" }

return loadfile(path) { 
    
    [2] = {
        
        States = { First = 9, Last = 10, Types = Types },       Rate = 2,
        
        Direction = Astro.Vector("Down"),       Script = "Particles/LaneSweep"
    
    }

}