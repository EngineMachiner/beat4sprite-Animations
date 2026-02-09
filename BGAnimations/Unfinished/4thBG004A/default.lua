

local args = ...

local params = beat4sprite.create( {
	File = beat4sprite.GAMESTATE.getSongBG(),
	MirrorX = true,
	Columns = 1
} )

params:tweak( args )
		
return Def.ActorFrame{

	beat4sprite.Load(params),

	Def.ActorFrame{
		OnCommand=function(af)
			beat4sprite.setFunctions(af)
			af:diffusealpha(1)
			af:queuecommand("Sequence")
		end,
		SequenceCommand=function(af)
			af:sleep(1.5):diffusealpha(0)
			af:sleep(2.5):diffusealpha(1)
			af:queuecommand("Sequence")
		end,
		beat4sprite.Load( {
			File = "4th/Backgrounds/F.png",
			posX = -0.5
		} ),
		beat4sprite.Load( {
			File = "4th/Backgrounds/F2.png",
			posX = 0.5
		} )
	},

	Def.ActorFrame{
		loadfile( beat4sprite.Paths.getBGAFile("4thK02A") )( { 
			Index = 2, 
			Remove = true 
		} ),
		OnCommand=function(af)
			beat4sprite.setFunctions(af)
			af:diffusealpha(0)
			af:queuecommand("Sequence")
		end,
		SequenceCommand=function(af)
			af:sleep(1.5):diffusealpha(1)
			af:sleep(1.5):diffusealpha(0)
			af:sleep(1)
			af:queuecommand("Sequence")
		end		
	}
	
}