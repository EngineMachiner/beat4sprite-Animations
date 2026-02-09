

local args = ...

local t = Def.ActorFrame{}

local aft = Def.ActorFrameTexture{
	InitCommand=function(self)
		self:SetSize( SCREEN_WIDTH, SCREEN_HEIGHT )
		self:EnableAlphaBuffer(true):Create()
		self:GetParent().Texture = self:GetTexture()
	end
}

local params = beat4sprite.create {

	{	
		File = beat4sprite.GAMESTATE.getSongBG(),
		Columns = { -2, 1 },
		Commands = { "Rainbow", "Mirror", "StairsStates" },
		Alpha = 0.5,
		Move = { 1, 0 }
	},

	{	
		File = beat4sprite.GAMESTATE.getSongBG(),
		Columns = 2,
		Rows = { -1, 0 },
		Commands = "Kaleidoscope2x2"
	}

}

params[2]:Load( aft )

aft[#aft+1] = beat4sprite.Sprite.blendQuad("BlendMode_InvertDest")

return beat4sprite.ActorFrame() .. {

	params[1]:Load(t),

	Def.ActorFrame{

		aft,	Def.Sprite{
			OnCommand=function(self)
				self:SetTexture( self:GetParent().Texture )
				self:Center():blend('add'):diffusealpha(0.5)
			end
		}

	}

}