
local params = beat4sprite.create {

	{
		File = "1st/Sprites/HComb 1x3.png",
		Zoom = 0.5, Columns = 1,
		Rows = 3, lastState = 3
	},

	{
		File = "1st/Sprites/HComb2 1x3.png",
		Zoom = 1.5, firstState = 1,
		lastState = 3, Columns = 1,
		Rows = 1
	}

}

local t = params:Load()			local preActor = t.getParameterActor(2)

preActor.OnCommand = function(self)
	beat4sprite.mainCommand(self)	self:queuecommand("Then")
end

preActor.ThenCommand = function(self)
	local d = self:getTweenRate() * 4
	self:sleep(d):diffusealpha(0):sleep(d):diffusealpha(1)
	self:queuecommand("Then")
end

t[#t+1] = beat4sprite.Sprite.colorQuad( Color.Black ) .. {
	OnCommand=function(self)
		local d = self:getTweenRate()
		self:diffusealpha(0):sleep( 3 * d ):diffusealpha(1):sleep(d)
		self:queuecommand("On")
	end
}

t[#t+1] = beat4sprite.Load {
	File = "1st/Sprites/H 5x4.png",
	Script = "SpaceEffects/Line.lua",
	firstState = 17, numberOf = 4, Type = "Line",
	Lines = 12
}

return Def.ActorFrame{ t }