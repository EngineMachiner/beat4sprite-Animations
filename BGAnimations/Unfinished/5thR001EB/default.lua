
local params = beat4sprite.create( {
	File = "5th/Sprites/Gradients/A003 8x8.png",
	Columns = { -2, 1 },	Rows = { -1, 0 },
	firstState = 60,	lastState = 1,
	Zoom = 4,	AnimationRate = 4,
	Commands = "Mirror"
} )

return params:Load()