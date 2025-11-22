
local Builder = beat4sprite.Builder

local NX = beat4sprite.Modules.NX             local graphic = NX.bga


local color = color("#909090")

local Background = Builder.SongBackground():Load() .. {
    
    OnCommand=function(self) self:diffuse(color) end

}


return Builder.Load {

    Colors = { Color.White, Color.Invisible },          Effect = { Period = 2 },        Blend = "InvertDest",

    Texture = graphic("ScreenWithMenuElements background", "spiral.png"),

    Sprite = {
        
        OnCommand=function(self) self:diffusealpha(0.5):setEffect("diffuseshift") end,

        BPMChangeCommand=function(self)
            
            local period = self:periodRate()        self:effectperiod(period)
        
        end,
    
    },

    Layers = { Back = Background }

}