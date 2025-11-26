
local Builder = beat4sprite.Builder

local Infinitesimal = beat4sprite.Modules.Infinitesimal         local bga = Infinitesimal.bga


local SongBG = Builder.SongBackground():merge { Colors = color("#707070") }

return Builder.Load {

    Texture = bga("ScreenGameplay failed", "Hey.png"),           Script = "Particles/Depth/Spread",

    Layers = { Back = SongBG:Load() },           Zoom = 0.25,     Rate = 1.25

}