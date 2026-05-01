
local builder = beat4sprite.Builder.Retro {

	Texture = "5th/3.png",        Scroll = Astro.Vector("Up")

}

return builder:merge(...):Load()