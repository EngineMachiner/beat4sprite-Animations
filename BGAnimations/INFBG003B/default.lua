
local Builder = beat4sprite.Builder

local Infinitesimal = beat4sprite.Modules.Infinitesimal         local graphic = Infinitesimal.graphic


local SongBG = Builder.SongBackground():merge { Colors = color("#707070") }

return Builder.Load {

    Texture = graphic("Logo/Parts/Text (doubleres).png"),           Script = "Particles/Depth/Spread",

    Layers = { Back = SongBG:Load() },           Zoom = 0.5,     Rate = 1.25,       Quantity = 6

}