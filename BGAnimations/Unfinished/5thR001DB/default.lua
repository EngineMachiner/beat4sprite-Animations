
local params = beat4sprite.create( {
	File = "5th/Sprites/Gradients/A002 8x8.png",
	Columns = { -2, 1 },	Rows = { -1, 0 },
	lastState = 1,	firstState = 60,
	Zoom = 4,	AnimationRate = 4,
	Commands = { "Mirror" }
} )

return params:Load()