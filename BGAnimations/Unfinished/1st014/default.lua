
local t = Def.ActorFrame{}

local bg = {
	beat4sprite.GAMESTATE.getSongBG(),	"1st/Backgrounds/IDABC.png",
	beat4sprite.GAMESTATE.getSongBG(),	"1st/Backgrounds/IBAB.png"
}

local params = beat4sprite.create {

	{
		File = "1st/Backgrounds/HA.png",
		Columns = 1, 		Zoom = 2,
		MirrorX = true, 	Reversed = true,
		Scroll = { 0, -1 }
	}

}

params[1]:Load(t)

local function sequence( self, i )

	local p = params[i+1]:getInternals()
	local t = self:getTweenRate(p)
	local time = i - 1

	if not self.Sequence then

		if i == 4 then self:diffuse( Color.Yellow ) end

		self:diffusealpha(0):sleep( time * t ):diffusealpha(1)

		self.Sequence = true

	end

	time = #bg - 1
	self:sleep(t):diffusealpha(0):sleep( time * t ):diffusealpha(1)
	self:queuecommand("Sequence")

end

t[#t+1] = Def.ActorFrame{
	OnCommand=function(self) self:diffusealpha(0.5):queuecommand("Sequence") end
}

local t2 = t[#t]
for i=1,4 do

	params[i+1] = beat4sprite.create {
		Index = i+1,		File = bg[i],		Script = "Kaleidoscopes/Single.lua"
	}

	local set = params[i+1]

	t2[#t2+1] = set:Load() .. {
		InitCommand=function(self) self.sequence = sequence end,
		SequenceCommand=function(self) self:sequence(i) end
	}

end

return Def.ActorFrame{ t }