
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local builder = beat4sprite.Builder {

    Texture = bga("ScreenStageInformation decorations", "arrow.png"),

    Script = "Particles/Depth/StaticScatter",          Rate = 2,        Zoom = 0.25

}

return beat4sprite.BaseFrame {
    
    Starlight.Background(),          builder:merge(...):Load()

}