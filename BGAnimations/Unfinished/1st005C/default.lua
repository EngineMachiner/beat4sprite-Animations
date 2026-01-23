
local set = {

	{ File = "1st/Sprites/HSV/A 4x1.png", States = 1 },
	{ File = "1st/Backgrounds/F2.png" },
	{ File = "1st/Sprites/HSV/A 4x1.png", States = 3 },
	{ 
		File = "1st/Backgrounds/D2.png", 
		Run = function(self) self:cropleft(0.375):cropright(0.375) end
	}
	
}

return loadfile( beat4sprite.Paths.getBGAFile("1st005B") ) { Set = set }