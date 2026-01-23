
local t = Def.ActorFrame{}

local params = beat4sprite.create {

	{
		File = "1st/Backgrounds/A.png",
		Columns = 1
	},

	{
		File = "1st/Sprites/J 3x5.png",
		Columns = 1,		Spacing = { 1, 0.65 },
		Rows = 1,			Zoom = 2.5,
		lastState = 15,		Color = Color.Orange,
		Blend = 'add'
	}

}

t[#t+1] = beat4sprite.Sprite.colorQuad( Color.Black )			params[1]:Load(t)
	
t[2].OnCommand=function(self) self:x(25):zoomx(0.5) end

t[#t+1] = beat4sprite.Sprite.blendQuad( "BlendMode_InvertDest" )

local crop = { { 0, 0.5 }, { 0.625, 0 } }
local p = beat4sprite.createInternals { File = "1st/Backgrounds/G.png" }

for i=-1,1 do		for k=1,2 do
	
	t[#t+1] = beat4sprite.Actor(p) .. {
		OnCommand=function(self)

			local crop = crop[k]

			self:init(p):Center()
			self:x( self:GetX() + self:GetZoomedWidth() * i )
			self:cropleft( crop[1] ):cropright( crop[2] )

			if math.abs(i) == 1 then self:zoomx( - self:GetZoomX() ) end

		end
	}

end			end

params[2]:Load(t)

return Def.ActorFrame{ t }