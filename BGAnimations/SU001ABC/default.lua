
local Superuser = beat4sprite.Modules.Superuser         local graphic = Superuser.graphic

local Builder = beat4sprite.Builder


local builder = Builder {}

local Rainbow = beat4sprite.ScreenQuad() .. {
    
    OnCommand=function(self) self:init(builder):Center()        self.Rainbow = true end,

    UpdateFunctionCommand=function(self) self:updateRainbow():blend("add"):diffusealpha(0.25) end

}


local Background = Superuser.Background():merge { Layers = { Front = Rainbow } }

return beat4sprite.ActorFrame { 
    
    Background:Load(),

    Builder.Load {

        Quantity = 6,       Zoom = 0.5,         Rate = 2,

        Texture = graphic("ScreenTitleMenu supercolor.png"),        Script = "Particles/Depth/Spread"

    }

}