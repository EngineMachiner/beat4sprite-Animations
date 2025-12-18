
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

return beat4sprite.BaseFrame {
    
    Starlight.Background(),

    beat4sprite.Builder.Load {

        Texture = bga( "ScreenSelectMusic underlay", "Jukebox/ex_inner.png" ),

        Script = "Particles/Depth/Bounce",       Rate = 2,      Reversed = true,

        Zoom = 0.25,        Effect = { Period = 2 }

    }

}