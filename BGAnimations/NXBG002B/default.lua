
local Builder = beat4sprite.Builder

local NX = beat4sprite.Modules.NX             local graphic = NX.bga


local color = color("#909090")

local Background = Builder.SongBackground():Load() .. {
    
    OnCommand=function(self) self:diffuse(color) end

}


local Actor = Builder {

    Texture = graphic("ScreenWithMenuElements background", "spiral.png"),

    Script = "Morph/Pulse",      Layers = { Back = "Hidden" },      Effect = { Period = 16 },

}

Actor = Actor:merge(...):Load() .. { OnCommand=function(self) self:diffusealpha(0.03) end }


return beat4sprite.ActorFrame { Background, Actor }