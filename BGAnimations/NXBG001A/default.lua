
local Builder = beat4sprite.Builder

local NX = beat4sprite.Modules.NX             local graphic = NX.bga


local color = color("#cfcfcfff")

local Background = Builder.SongBackground():Load() .. {
    
    OnCommand=function(self) self:diffuse(color) end

}


local builder = Builder {

    Colors = { Color.White, Color.Invisible },          Effect = { Period = 2 },

    Texture = graphic("_door", "halftone (stretch).png"),

    Sprite = {
        
        OnCommand=function(self) self:diffusealpha(0.75):setEffect("diffuseshift") end,

        BPMChangeCommand=function(self)
            
            local period = self:periodRate()        self:effectperiod(period)
        
        end,
    
    },

    Layers = { Back = Background }

}

return builder:merge(...):Load()