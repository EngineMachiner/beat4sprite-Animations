
local builder = beat4sprite.Builder.Retro {

	{ 
        
        Dynamic = true,

        Texture = "5th/4 4x3.png",        States = { First = 5, Last = 8, Types = "Random" }
    
    },

	{ Texture = "5th/6.png",      Scroll = Astro.Vector("Left") }

}

return builder:merge(...):Load()