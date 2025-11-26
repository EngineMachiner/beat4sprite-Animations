
local Superuser = beat4sprite.Modules.Superuser         local graphic = Superuser.graphic

return beat4sprite.ActorFrame { 
    
    Superuser.Background():Load(),

    beat4sprite.Builder.Load {

        Quantity = 6,       Zoom = 0.5,         Rate = 2,

        Texture = graphic("ScreenTitleMenu supercolor.png"),        Script = "Particles/Depth/Spread"

    }

}