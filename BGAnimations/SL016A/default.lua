
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local color = tapLua.Color.random( 0.75, 0.5 )

local builder = beat4sprite.Builder {

    Texture = bga( "ScreenWithMenuElements background", "SN1/Innard02v2.png" ),

    Script = "Morph/Wag",       Effect = { Period = 32 },       Layers = { Back = true },

    Sprite = { OnCommand=function(self) self:diffuse(color):diffusealpha(0.125) end },

}

return beat4sprite.ActorFrame { Starlight.Background(),      builder:merge(...):Load() }