
local builder = beat4sprite.Builder.Retro {
    
    { Texture = "5th/9.png",        Mirror = true },

    {
        
        Dynamic = true,

        Texture = "5th/2 1x4.png",          States = { Last = 4,    Rate = 0.5 },
        
        Scroll = Astro.Vector("Up"),        Rate = 2,

        Matrix = function(matrix) matrix.x = 1      return matrix end
    
    }

}

return builder:merge(...):Load()