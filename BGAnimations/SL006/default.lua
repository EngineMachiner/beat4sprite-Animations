
local Alpha = tapLua.shadersEnabled() and 1 or 0.125

local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local builder = beat4sprite.Builder {

    Texture = bga("ScreenEvaluationNormal decorations/EXOverlay", "hex2.png"),

    Script = "Morph/Flag",          Effect = { Period = 4 },        Alpha = Alpha,

    Layers = { Back = true },       Type = 2

}

return beat4sprite.BaseFrame {
    
    Starlight.Background(),          builder:merge(...):Load()

}