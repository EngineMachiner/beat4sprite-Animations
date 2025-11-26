
local path = beat4sprite.animationPath("INF002A")

local Infinitesimal = beat4sprite.Modules.Infinitesimal         local graphic = Infinitesimal.graphic

return beat4sprite.Builder.Load {

    Texture = graphic("Logo/Parts/Text (doubleres).png"),           Script = "Particles/Depth/Spread",

    Layers = { Back = loadfile(path)() },           Zoom = 0.5,     Rate = 1.25,       Quantity = 6

}