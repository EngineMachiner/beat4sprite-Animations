
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local path = bga("ScreenWithMenuElements background", "OLD/bg.png")

local builder = beat4sprite.Builder {

    Texture = path,     Zoom = 0.275,       Mirror = true,

    Colors = { Color.White, Color.Invisible },      Effect = { Period = 8 },

    Output = { LoadSpriteCommand=function(self) self:addimagecoords( SCREEN_WIDTH, 0 ) end }

}

return beat4sprite.BaseFrame {
    
    Starlight.Background(),

    builder:Load() .. { OnCommand=function(self) self:init(builder):setEffect("diffuseshift") end }

}