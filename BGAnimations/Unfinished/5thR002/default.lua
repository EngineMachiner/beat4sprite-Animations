
local scripts = {
	beat4sprite.Paths.getBGAFile("5thR003B"),
	beat4sprite.Paths.getBGAFile("5thR003C"),
	beat4sprite.Paths.getBGAFile("5thR003D"),
	beat4sprite.Paths.getBGAFile("5thR003E")
}

local t = beat4sprite.ActorFrame()

for i = #scripts, 1, -1 do
	t[#t+1] = Def.ActorFrame{
		loadfile(scripts[i])(),
		OnCommand=function(self)
			beat4sprite.setFunctions(self)
			self:diffusealpha(1):sleep( ( i - 1 ) * 2 )
			self:diffusealpha(0):sleep( ( #scripts - 1 ) * 2 )
			self:queuecommand("Repeat")
		end,
		GoCommand=function(self)
			self:queuecommand("Repeat")
		end,
		RepeatCommand=function(self)
			local d = self:getDelay() * 2
			self:diffusealpha(1):sleep(d)
			self:diffusealpha(0):sleep( ( #scripts - 1 ) * d )
			self:queuecommand("Go")
		end
	}
end

return Def.ActorFrame{ t }