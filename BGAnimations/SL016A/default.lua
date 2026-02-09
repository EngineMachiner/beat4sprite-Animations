
local Alpha = tapLua.shadersEnabled() and 1 or 0.125

local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local color = tapLua.Color.random( 0.75, 0.5 )

local builder = beat4sprite.Builder {

    Texture = bga( "ScreenWithMenuElements background", "SN1/Innard02v2.png" ),     Filter = false,

    Script = "Morph/Wag",       Effect = { Period = 32 },       Layers = { Back = true },

    Sprite = { OnCommand=function(self) self:diffuse(color):diffusealpha(Alpha) end },

}

return beat4sprite.BaseFrame { Starlight.Background(),      builder:merge(...):Load() }