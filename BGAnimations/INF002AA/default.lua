
local path = beat4sprite.animationPath("INF002A")

local Infinitesimal = beat4sprite.Modules.Infinitesimal         local bga = Infinitesimal.bga

return beat4sprite.Builder.Load {

    Texture = bga("ScreenGameplay failed", "Hey.png"),           Script = "Particles/Depth/Spread",

    Layers = { Back = loadfile(path)() },           Zoom = 0.25,     Rate = 1.25

}