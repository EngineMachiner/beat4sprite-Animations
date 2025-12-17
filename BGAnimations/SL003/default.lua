
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local builder = beat4sprite.Builder {

    Texture = bga("ScreenSelectMusic overlay/_ShockArrow", "ShockArrowIcon.png"),

    Script = "Particles/Depth/StaticScatter",          Rate = 2,    Zoom = 1.25

}

return beat4sprite.ActorFrame {
    
    Starlight.Background(),          builder:merge(...):Load()

}