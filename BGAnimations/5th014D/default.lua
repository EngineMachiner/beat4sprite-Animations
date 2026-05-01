
return beat4sprite.Builder.Retro.Load {

    {
        
        Texture = "5th/6 4x3.png",          States = 7,
    
        Scroll = Astro.Vector("Up"),        Rate = 2

    },

    {

        Texture = "5th/5 4x4.png",
        
        States = { Last = 4,    Types = "Position" },          Script = "Particles/ScreenBounce"

    }

}