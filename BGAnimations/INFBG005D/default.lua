
local Builder = beat4sprite.Builder

local SongBG = Builder.SongBackground():merge { Colors = color("#707070") }

return Builder.Load {

    Texture = "Infinitesimal/lights 3x1.png",       Quantity = 4,

    States = { Last = 3,    Types = { "Idle", "Position" } },       Zoom = 3,       Rate = 2,

    Script = "Particles/Depth/StaticScatter",          Layers = { Back = SongBG:Load() },

    Sprite = { OnCommand=function(self) self:blend("BlendMode_InvertDest") end }

}