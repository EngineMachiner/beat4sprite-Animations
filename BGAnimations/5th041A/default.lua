
local builder = beat4sprite.Builder.Retro {

    Texture = "5th/7.png",      Scroll = Astro.Vector("Down")

}

return builder:merge(...):Load()