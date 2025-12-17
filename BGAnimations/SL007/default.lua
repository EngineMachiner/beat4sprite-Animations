
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local builder = beat4sprite.Builder {

    Texture = bga("ScreenStageInformation decorations/", "star.png"),

    Script = "Particles/Depth/Spread",          Rate = 2,        Zoom = 0.333,

    Sprite = { Motion2Command=function(self) self:rotationz( self:GetRotationZ() + 180 ) end },

    Direction = Astro.Vector("Down")

}

return beat4sprite.ActorFrame {
    
    Starlight.Background(),          builder:merge(...):Load()

}