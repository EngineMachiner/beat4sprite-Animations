
local Alpha = tapLua.shadersEnabled() and 1 or 0.125

local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local builder = beat4sprite.Builder {

    Texture = bga("ScreenEvaluationNormal decorations/EXOverlay", "hex2.png"),

    Script = "Morph/Flag",          Effect = { Period = 4 },        Alpha = Alpha,

    Layers = { Back = true },       Type = 2

}

return beat4sprite.BaseFrame {

    beat4sprite.ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end },

    beat4sprite.Builder.SongBackground():Load() .. { OnCommand=function(self) self:diffusealpha(0.625) end },          
    
    builder:merge(...):Load()

}