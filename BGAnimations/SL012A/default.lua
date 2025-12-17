
local zoom = SCREEN_HEIGHT / 720

local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local builder = beat4sprite.Builder { Effect = { Period = 2 } }

return beat4sprite.BaseFrame {
    
    Starlight.Background(),

    beat4sprite.ActorFrame {
        
        InitCommand=function(self)

            local update = function() self:playcommand("UpdateFunction") end

            self:SetUpdateFunction(update)

        end,

        beat4sprite.Sprite {

            Texture = bga("_Logo","white_XX.png"),

            OnCommand=function(self) self.Rainbow = true        self:init(builder):Center():zoom(zoom):blend("add") end,

            UpdateFunctionCommand=function(self) self:updateRainbow() end

        } 

    }

}