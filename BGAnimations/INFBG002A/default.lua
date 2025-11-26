
local Builder = beat4sprite.Builder

local Infinitesimal = beat4sprite.Modules.Infinitesimal         local graphic = Infinitesimal.graphic


local SongBG = Builder.SongBackground():merge { Colors = color("#707070") }

return Builder.Load {

    Texture = graphic("UI/Heart (doubleres).png"),          Zoom = 2,

    Script = "Particles/Depth/StaticScatter",          Layers = { Back = SongBG:Load() }

}