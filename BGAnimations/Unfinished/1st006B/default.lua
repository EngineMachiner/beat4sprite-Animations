return Def.ActorFrame{

	loadfile( beat4sprite.Paths.getBGAFile("1st006") )(),

	beat4sprite.Load {
		File = "1st/Backgrounds/A.png",
		Columns = 1,
		Commands = "Color",
		Color = color("#f80060")
	}
	
}