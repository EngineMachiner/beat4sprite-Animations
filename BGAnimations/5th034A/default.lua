
local builder = beat4sprite.Builder.Retro {

    Texture = "5th/12.png",     Scroll = Astro.Vector("Left")

}

return builder:merge(...):Load()