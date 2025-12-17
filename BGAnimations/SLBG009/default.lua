
local Builder = beat4sprite.Builder

local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local Background = bga("ScreenGameOver overlay", "planet.png")

Background = Builder.Background(Background):merge {

    Colors = { Color.White,    Color.Invisible },       Effect = { Period = 16 },

    Sprite = { OnCommand=function(self) self:setEffect("diffuseshift") end }

}

return beat4sprite.BaseFrame {
    
    beat4sprite.ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end },

    Builder.SongBackground():Load() .. { OnCommand=function(self) self:diffusealpha(0.625) end },

    Background:Load(),

    Builder.Load {

        Texture = bga( "ScreenSelectMusic underlay", "Jukebox/ex_outer.png" ),

        Script = "Morph/Wag",       Effect = { Period = 32 },       Layers = { Back = true },

        Filter = false,         Sprite = { OnCommand=function(self) self:diffusealpha( 1 / 128 ):blend("add") end }

    }

}