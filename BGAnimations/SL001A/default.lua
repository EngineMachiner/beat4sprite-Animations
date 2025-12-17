
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local builder = beat4sprite.Builder {

    Texture = bga("ScreenSelectMusic overlay/WheelDeco", "Jacket Backer.png"),

    Sprite = { Motion2Command=function(self) self:rotationz( self:GetRotationZ() + 180 ) end },

    Script = "Particles/Depth/Spread",          Zoom = 0.5,     Rate = 2

}

return beat4sprite.ActorFrame {
    
    Starlight.Background(),          builder:merge(...):Load()

}