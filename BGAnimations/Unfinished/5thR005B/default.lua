
local tweaks = beat4sprite.create( {
	File = "5th/Sprites/Gradients/D001 8x8.png",
	Columns = { -2, 1 },	Rows = 1,
	lastState = 60,	Zoom = 4,
	Commands = { "Move" },	Cleanup = true,
	scrollY = -1
} )

return loadfile( beat4sprite.Paths.getBGAFile("5th004A") )( tweaks )