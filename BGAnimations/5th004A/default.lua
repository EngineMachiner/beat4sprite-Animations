
local builder = beat4sprite.Builder.Retro {

    Texture = "5th/6 4x4.png",      Scroll = Astro.Vector("Down"),      States = 14

}

return builder:merge(...):Load()