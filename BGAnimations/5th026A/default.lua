
local Vector = Astro.Vector

local builder = beat4sprite.Builder.Retro {

    {

        Texture = "5th/1 4x3.png",          Scroll = Vector("Up"),      Rate = 2,
    
        States = { First = 9, Last = 10, Types = "Idle", Position = true },

        Matrix = Astro.Vector( 2, 2 )

    },

    {

        Texture = "5th/1 4x4.png",          States = { First = 3, Last = 4 },

        Direction = Vector("Down"),         Script = "Particles/Depth/Spread"

    }

}

return builder:merge(...):Load()