
local Builder = beat4sprite.Builder

local SongBG = Builder.SongBackground():merge { Colors = color("#707070") }

return Builder.Load {

    Texture = "Infinitesimal/loops (doubleres) 2x1.png",
    
    States = { Last = 2,    Types = { "Static", "Position" } },        Zoom = 0.25,        Rate = 2,

    Script = "Particles/ScreenBounce",          Layers = { Back = SongBG:Load() }

}