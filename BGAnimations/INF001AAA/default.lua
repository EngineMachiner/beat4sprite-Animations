
local name = ... or "INF001A"           local path = beat4sprite.animationPath(name)

local Infinitesimal = beat4sprite.Modules.Infinitesimal         local graphic = Infinitesimal.graphic

return beat4sprite.Builder.Load {

    Texture = graphic("UI/Heart (doubleres).png"),          Zoom = 2,         Rate = 1.25,

    Script = "Particles/Depth/Spread",          Layers = { Back = loadfile(path)() }

}