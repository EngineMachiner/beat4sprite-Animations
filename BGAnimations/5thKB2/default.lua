
local params = beat4sprite.create( {

	{	
		File = "5th/Backgrounds/A.png",
		Script = "Kaleidoscopes/Comb.lua"
	},

	{
		File = "5th/Sprites/X2 5x1.png",
		Columns = 5,	firstState = 1,	lastState = 5,
		Commands = { "StairsStates", "SpinX" }
	}
	
} )

return params:Load()