
local params = beat4sprite.create( {
	File = "5th/Sprites/Gradients/F004 8x8.png",
	Columns = { -2, 1 },	Rows = { -1, 0 },
	lastState = 60,	firstState = 1,
	Zoom = 4,	AnimationRate = 2,
	Commands = "Mirror"
} )

return params:Load()