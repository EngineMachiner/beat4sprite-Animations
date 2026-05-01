
local params = beat4sprite.create( {
	File = "5th/Sprites/Gradients/C002 4x4.png",
	Columns = { -2, 1 },	Rows = { -1, 0 },
	lastState = 1,	firstState = 15,
	Zoom = 2,	Commands = "Mirror"
} )

return params:Load()