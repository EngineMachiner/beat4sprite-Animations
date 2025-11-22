
local NX = beat4sprite.Modules.NX

return beat4sprite.ActorFrame {
    
    NX.Quad(),

    beat4sprite.Builder.Load {
        
        Texture = "NX/ability 3x1.png",         Script = "Particles/ScreenBounce",

        Rate = 2,       Zoom = 0.75,            States = { First = 1, Last = 3, Types = { "Idle", "Position" } }

    }

}