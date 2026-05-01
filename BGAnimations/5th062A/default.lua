
local builder = beat4sprite.Builder.Retro {

    Texture = "5th/4 1x4.png",      Matrix = Astro.Vector(4,4),
    
    States = { Last = 4, Types = "Idle", Position = true },      Scroll = Astro.Vector("Left")

}

return builder:merge(...):Load()