
local NX = beat4sprite.Modules.NX

return beat4sprite.ActorFrame {
    
    NX.Quad(),

    beat4sprite.Builder.Load {
        
        Texture = "NX/ability 3x1.png",         Script = "Particles/Depth/Spread",

        Rate = 2,            States = { First = 1, Last = 3, Types = { "Idle", "Position" } }

    }

}