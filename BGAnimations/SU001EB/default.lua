
local Superuser = beat4sprite.Modules.Superuser

local Builder = beat4sprite.Builder {}

local Rainbow = beat4sprite.ScreenQuad() .. {
    
    OnCommand=function(self) self:init(Builder):Center()        self.Rainbow = true end,

    UpdateFunctionCommand=function(self) self:updateRainbow():blend("add"):diffusealpha(0.25) end

}

Builder = Superuser.Background():merge {
    
    Effect = { Period = 32 },       Script = "Morph/Wag.lua",       Layers = { Front = Rainbow }

}

return Builder:Load()