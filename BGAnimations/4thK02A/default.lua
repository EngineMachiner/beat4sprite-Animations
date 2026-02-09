
local Builder = beat4sprite.Builder.Retro           local Vector = Astro.Vector

return Builder.Load {

	{ Texture = "4th/6.png",     Script = "Kaleidoscope/Polygon.lua",   Zoom = 0.5 },

	{ Texture = "4th/5 5x4.png",      States = 2,     Scroll = Vector("UpLeft"),    Rate = 2 }

}