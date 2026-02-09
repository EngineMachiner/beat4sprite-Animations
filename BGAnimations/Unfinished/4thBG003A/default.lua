
local args = ...

local t = beat4sprite.ActorFrame()

local params = beat4sprite.create {

	beat4sprite.Sprite.bgTemplate(),

	{	
		File = "4th/Sprites/ABCD 5x4.png",
		States = { 7, 10, Types = "Static" },		Zoom = 1.0635,
		Script = "SpiralStaticTrace.lua",
		Commands = "StatePerSprite"
	},

	{
		File = "4th/Sprites/AB 5x4.png",
		States = { 2, 15 },
		Columns = { 0, 4 },	Rows = { -2, 1 },
		Spacing = { 1.0635, 1 },
		Color = "Rainbow",
		Commands = { "StairsStates", "Fade" }
	},

	{
		File = { THEME:GetPathG("","_blank"),	"4th/Backgrounds/C.png" },
		CycleOffset = 4,			Backwards = true,
		Script = "Cyclic/SplitScreen.lua"
	}

}
 
params:tweak( args )

t[#t+1] = beat4sprite.ActorFrame("Hide") .. {
	HideCommand=function(self)
		local d = self:getDelay()
		self:sleep( 8 * d ):linear(4):diffusealpha(0)
	end
}

params[1]:Load( t[#t] )

t[#t+1] = beat4sprite.ActorFrame("Hide") .. {

	beat4sprite.Sprite.colorQuad( Color.Black ) .. {
		OnCommand=function(self)
			local scale = SCREEN_HEIGHT / 240
			self:setsize( 320 * scale, 240 * scale )
		end
	},

	HideCommand=function(self)
		local d = self:getDelay()
		self:sleep( 4 * d ):diffusealpha(0)
	end

}
params[3]:Load( t[#t] )

t[#t+1] = beat4sprite.ActorFrame("Hide") .. {
	HideCommand=function(self)
		local d = self:getDelay()
		self:y(23):sleep( 8 * d ):diffusealpha(0)
	end
}
params[2]:Load( t[#t] )

t[#t+1] = beat4sprite.ActorFrame("Hide") .. {
	
	OnCommand=function(self) self:diffusealpha(0) end,
	HideCommand=function(self)
		local d = self:getDelay()
		self:sleep( 8 * d ):diffusealpha(1)
		self:sleep( 4 * d ):diffusealpha(0)
	end

}
params[4]:Load( t[#t] )

t[#t+1] = beat4sprite.ActorFrame("Hide") .. {

	OnCommand=function(self) self:diffusealpha(0) end,
	HideCommand=function(self)
		local d = self:getDelay()
		self:sleep( 12 * d ):diffusealpha(1)
		self:sleep( 4 * d ):diffusealpha(0)
	end

}

local p = params[4]:copy { File = params[4].File[2], Script = "WarpingEffects/Bob.lua" }

p:Load( t[#t] )

beat4sprite.Load( {

	Set = {
		{ File = "4th/Sprites/AB 5x4.png", States = { 2, 15 } }
	},
	
	Blend = "BlendMode_Add",
	Spin = true,	Even = true,
	Script = "Cyclic/Explode.lua"

}, t[#t] )

params[1]:copy( { Cross = { By = 1, Type = 1 } } ):Load(t)

t[#t+1] = beat4sprite.ActorFrame("Hide") .. {

	OnCommand=function(self) self:diffusealpha(0) end,

	beat4sprite.Sprite.colorQuad( Color.Black ),

	beat4sprite.randomBGA(),
	
	HideCommand=function(self)
		local d = self:getDelay()
		self:sleep( 16 * d ):diffusealpha(1)
	end

}
	
return Def.ActorFrame{ t }
