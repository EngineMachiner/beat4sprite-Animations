
local builder = beat4sprite.Builder.Retro {

	{ Texture = "5th/9.png",            Mirror = { x = true } },

	{ 
        
        Dynamic = true,

        Texture = "5th/4 4x4.png",        States = { Last = 16,     Types = "Random" }
    
    }

}

return builder:merge(...):Load()