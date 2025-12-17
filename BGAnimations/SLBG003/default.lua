
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local builder = beat4sprite.Builder {

    Texture = bga("ScreenStageInformation decorations", "arrow.png"),

    Script = "Particles/Depth/StaticScatter",          Rate = 2,        Zoom = 0.333

}

return beat4sprite.BaseFrame {
    
    beat4sprite.ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end },

    beat4sprite.Builder.SongBackground():Load() .. { OnCommand=function(self) self:diffusealpha(0.625) end },
    
    builder:merge(...):Load()

}