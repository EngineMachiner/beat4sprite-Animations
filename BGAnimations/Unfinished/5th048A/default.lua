
local sub = ...

local t = Def.ActorFrame{}

local params = {

	tweakScript = beat4sprite.Paths.getBGAFile("5th001A"),

	{ Remove = true },

	{
		File = { 
			"5th/Backgrounds/CABC2.png",
			"5th/Backgrounds/CABC.png"
		}
	}

}
beat4sprite.tweak( params, sub )
beat4sprite.Load( params, t )

params = beat4sprite.create( {
	Index = 3,
	File = "5th/Sprites/HSV/DA 4x3.png",
	firstState = 5,
	Columns = { -4, 3 },
	Rows = 1,
	Commands = "MaskSource"
} )
params:tweak( sub )
params:Load(t)

params = beat4sprite.create( {
	Index = 4,
	File = "5th/Sprites/HSV/DA 4x3.png",
	firstState = 4,
	Columns = { -4, 3 },
	Rows = { -1, 2 },
	scrollY = 1,
	Commands = { "MaskDestination", "Move" }
} )
params:tweak( sub )
params:Load(t)

return Def.ActorFrame{ t }
