
local params = beat4sprite.create( {
	File = "5th/Sprites/Gradients/J001 4x4.png",
	Columns = { -2, 1 },	Rows = { -1, 0 },
	firstState = 15,	lastState = 1,
	Zoom = 2,	Commands = "Mirror"
} )

return params:Load()