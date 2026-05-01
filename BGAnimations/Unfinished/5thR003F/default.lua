
local params = beat4sprite.create( {
	File = "5th/Sprites/Gradients/B006 8x8.png",
	Columns = 4,	Rows = 1,
	lastState = 60,	Zoom = 4,
	AnimationRate = 8,	Commands = "Mirror"
} )

return params:Load()