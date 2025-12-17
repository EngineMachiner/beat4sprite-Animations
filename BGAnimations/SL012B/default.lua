
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local builder = beat4sprite.Builder {
    
    Colors = { Color.White, Color.Invisible },      Effect = { Period = 2 }

}

return beat4sprite.BaseFrame {
    
    Starlight.Background(),

    beat4sprite.Sprite {

        Texture = bga("_Logo", "XX.png"),

        OnCommand=function(self) self:init(builder):Center():setEffect("diffuseshift") end

    }

}