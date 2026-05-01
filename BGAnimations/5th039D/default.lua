
local path = beat4sprite.animationPath("5th039B")           local Types = { "Idle", "Position" }

return loadfile(path) {

    {
        
        Texture = "5th/1 2x1.png",      States = 2,     Scroll = Astro.Vector("Left"),

        Output = { OnCommand=function(self) self.Rainbow = true end }
    
    },

    {

        Texture = "5th/6 4x4.png",      Rate = 2,
        
        States = { First = 9, Last = 10, Types = Types },       Script = "Particles/LaneSweep"
    
    }

}