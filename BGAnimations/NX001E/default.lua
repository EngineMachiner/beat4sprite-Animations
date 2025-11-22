
local NX = beat4sprite.Modules.NX             local graphic = NX.bga

return beat4sprite.ActorFrame {
    
    NX.Quad(),

    beat4sprite.Builder.Load {
        
        Texture = graphic( "_ability", "silver.png" ),         Script = "Particles/Depth/Helix",

        Rate = 2,       Whirl = true

    }

}