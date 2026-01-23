
local paramTwo = {
	File = "1st/Sprites/D 4x2.png",		lastState = 8,
	Script = "SpaceEffects/RoundTrace.lua",
	Type = "Spiral",		Slices = 1,		Rotation = { 0, 0, -45 }
}

local paramThree = {}		DeepCopy( paramTwo, paramThree )
paramThree.mainRotation = 180

return beat4sprite.Load {

	{	File = "1st/Backgrounds/H.png",		Script = "Kaleidoscopes/Single.lua"	},

	paramTwo,		paramThree

}