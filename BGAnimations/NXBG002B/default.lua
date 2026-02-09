
local Builder = beat4sprite.Builder

local NX = beat4sprite.Modules.NX             local graphic = NX.bga


local color = color("#909090")

local Background = Builder.SongBackground():Load() .. {
    
    OnCommand=function(self) self:diffuse(color) end

}


local shadersEnabled = tapLua.shadersEnabled()

local Alpha = shadersEnabled and 1 or 0.03          local Period = shadersEnabled and 2 or 16

local Actor = Builder {

    Texture = graphic("ScreenWithMenuElements background", "spiral.png"),

    Script = "Morph/Pulse",      Layers = { Back = "Hidden" },      Effect = { Period = Period },

    Alpha = Alpha

}

Actor = Actor:merge(...):Load()


return beat4sprite.ActorFrame { Background, Actor }