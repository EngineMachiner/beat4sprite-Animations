
local t = Def.ActorFrame{}

t[#t+1] = beat4sprite.Load {

	tweakFile = beat4sprite.Paths.getBGAFile("5th001A"),

	{	
		File = "/5th/Sprites/DABC 4x4.png",
		Columns = { -4, 3 },		Rows = { -2, 1 },
		firstState = 13,			Cleanup = true
	},

	{ Remove = true }

}

t[#t+1] = beat4sprite.ActorFrame("Repeat") .. {

	beat4sprite.Load {
		File = "/5th/Sprites/DABC 4x4.png",
		Columns = { -4, 3 },		Rows = { -2, 1 },
		MirrorX = true,				AnimationTypes = "Line",
		Commands = "Mirror",		firstState = 7,					lastState = 8
	},

	RepeatCommand=function(self)
		local d = self:getDelay() * 4
		self:diffusealpha(0):sleep(d):diffusealpha(1):sleep(d):diffusealpha(0):sleep( d * 2 )
		self:queuecommand("Repeat")
	end

}
	
t[#t+1] = beat4sprite.ActorFrame("Repeat") .. {

	loadfile( beat4sprite.Paths.getBGAFile("5th041A") )(),

	RepeatCommand=function(self)
		local d = self:getDelay() * 8
		self:diffusealpha(0):sleep(d):diffusealpha(1):sleep(d):queuecommand("Repeat")
	end
}

t[#t+1] = beat4sprite.Load {
	File = "/5th/Sprites/X1 5x1.png",
	Columns = 5,		firstState = 1,			lastState = 5,
	Commands = { "StairsStates", "SpinX" }
}

return Def.ActorFrame{ t }