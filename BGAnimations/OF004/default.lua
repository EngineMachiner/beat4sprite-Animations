
local SoundWaves = beat4sprite.Modules.SoundWaves

local Quad = SoundWaves.Quad() .. { OnCommand=function(self) self:Center():blend('add') end }

return beat4sprite.Builder.Load {

    Texture = "OutFox/SoundWaves/A 6x10.png",          Layers = { Front = Quad },

    States = { Last = 60 },          Zoom = 2.85,       Output = { Offset = false }

}