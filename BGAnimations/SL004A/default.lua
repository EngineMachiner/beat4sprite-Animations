
local zoom = SCREEN_HEIGHT / 720

local Starlight = beat4sprite.Modules.Starlight         local graphic = Starlight.graphic

local style = Astro.Table.random { "Single", "Versus", "Double" }

local builder = beat4sprite.Builder {
    
    Colors = { Color.White, Color.Invisible },      Effect = { Period = 2 }

}

return beat4sprite.BaseFrame {
    
    Starlight.Background(),

    beat4sprite.Sprite {

        Texture = graphic("ScreenSelectStyle Scroll/" .. style .. "/project_char.png"),

        OnCommand=function(self) self:init(builder):Center():zoom( zoom / 2 ):setEffect("diffuseshift") end

    }

}