
local Builder = beat4sprite.Builder

local Infinitesimal = beat4sprite.Modules.Infinitesimal         local graphic = Infinitesimal.graphic

local SongBG = Builder.SongBackground():merge { Colors = color("#707070") }

return Builder.Load {

    Colors = { Color.White, Color.Black },

    Texture = graphic("Logo/Parts/Loop (doubleres).png"),          Zoom = 0.25,

    Script = "Particles/Depth/StaticScatter",          Layers = { Back = SongBG:Load() }

}