
local Builder = beat4sprite.Builder

local SongBG = Builder.SongBackground():merge { Colors = color("#707070") }

return Builder.Load {

    Texture = "Infinitesimal/lights 3x1.png",

    States = { Last = 3,    Types = { "Idle", "Position" } },       Zoom = 0.3,

    Script = "Particles/Depth/StaticScatter",          Layers = { Back = SongBG:Load() }

}