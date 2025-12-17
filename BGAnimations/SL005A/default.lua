
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local builder = beat4sprite.Builder {

    Texture = bga("ScreenEvaluationNormal decorations", "header arrows 1x3.png"),

    Script = "Particles/Depth/StaticScatter",          Rate = 2,    Zoom = 3,

    Filter = false,     States = { First = 1, Last = 3, Types = { "Idle", "Position" } }

}

return beat4sprite.ActorFrame {
    
    Starlight.Background(),          builder:merge(...):Load()

}