
local Builder = beat4sprite.Builder

local SongBG = Builder.SongBackground():merge { Colors = color("#707070") }

return Builder.Load {

    Texture = "Infinitesimal/lights 3x1.png",           Zoom = 0.3,

    States = { Last = 3,    Types = { "Static", "Position" } },         Colors = "RainbowBlink",

    Script = "Particles/Depth/StaticScatter",          Layers = { Back = SongBG:Load() }

}