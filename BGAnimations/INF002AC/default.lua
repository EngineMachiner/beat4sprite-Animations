
local Builder = beat4sprite.Builder         local path = beat4sprite.animationPath("INF002A")

local Infinitesimal = beat4sprite.Modules.Infinitesimal         local graphic = Infinitesimal.graphic

local Background = loadfile(path)()

return Builder.Load {

    Direction = Astro.Vector("Left"),

    Texture = graphic("Logo/Parts/Loop (doubleres).png"),          Zoom = 0.25,        Rate = 1.25,

    Script = "Particles/Depth/Spread",          Layers = { Back = Background }

}