
local builder = beat4sprite.Builder.Retro {

    { Texture = "5th/1 4x4.png",    States = 13,      Output = { Offset = false } },

    {

        Texture = "5th/1 4x4.png",      Script = "Particles/LaneSweep",     Rate = 2,
        
        States = { First = 9, Last = 10, Types = { "Idle", "Position" } }

    }

}

return builder:merge(...):Load()