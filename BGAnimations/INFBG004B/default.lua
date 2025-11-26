
local Builder = beat4sprite.Builder

local Infinitesimal = beat4sprite.Modules.Infinitesimal         local graphic = Infinitesimal.graphic

local SongBG = Builder.SongBackground():merge { Colors = color("#707070") }

return Builder.Load {

    Direction = Astro.Vector("Left"),

    Texture = graphic("Logo/Parts/InnerLoop (doubleres).png"),          Zoom = 0.25,        Rate = 2,

    Script = "Particles/Depth/Spread",          Layers = { Back = SongBG:Load() }

}