
local params = beat4sprite.create( {
	File = "/5th/Sprites/Gradients/D001 8x8.png",
	Columns = { -2, 1 },	Rows = { -2, 0 },
	lastState = 1,	firstState = 60,
	Zoom = 4,	Commands = { "Move" },
	Cleanup = true,	 scrollY = 1
} )

return params:Load()