
return Def.ActorFrame{

	loadfile(beat4sprite.Paths.getBGAFile("5thR001A"))(),
	beat4sprite.Load( {
		File = "/5th/Sprites/DABCDE 4x3.png",
		firstState = 1,	lastState = 12,
		Script = "SpaceEffects/RoundTrace.lua"
	} )

}