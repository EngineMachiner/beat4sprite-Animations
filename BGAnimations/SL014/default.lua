
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

return beat4sprite.BaseFrame {
    
    Starlight.Background(),

    beat4sprite.Builder.Load {

        Texture = bga( "ScreenSelectMusic underlay", "Jukebox/ex_outer.png" ),

        Script = "Morph/Wag",       Effect = { Period = 32 },       Layers = { Back = true },

        Filter = false,         Sprite = { OnCommand=function(self) self:diffusealpha( 1 / 128 ):blend("add") end }

    }

}