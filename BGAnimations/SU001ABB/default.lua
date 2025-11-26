
local Superuser = beat4sprite.Modules.Superuser         local graphic = Superuser.graphic

return beat4sprite.ActorFrame { 
    
    Superuser.Background():Load(),

    beat4sprite.Builder.Load {

        Zoom = 0.125,

        Texture = graphic("karen.png"),        Script = "Particles/Depth/StaticScatter"

    }

}