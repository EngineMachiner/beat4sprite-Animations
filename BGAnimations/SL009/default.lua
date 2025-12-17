
local zoom = SCREEN_HEIGHT / 720

local Starlight = beat4sprite.Modules.Starlight         local graphic = Starlight.graphic

local builder = beat4sprite.Builder {
    
    Colors = { Color.White, Color.Invisible },      Effect = { Period = 8 }

}

return beat4sprite.BaseFrame {
    
    Starlight.Background(),

    beat4sprite.Sprite {

        Texture = graphic("_TitleImages/jukebox.png"),

        OnCommand=function(self) self:init(builder):Center():zoom( zoom * 2.6 ):setEffect("diffuseshift") end

    }

}