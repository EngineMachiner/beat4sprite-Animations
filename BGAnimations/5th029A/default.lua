
local States = { First = 11, Last = 12,     Types = { "Idle", "Position" } }

local builder = beat4sprite.Builder.Retro {

    { Texture = "5th/1 4x4.png",      States = 16 },

    {
        
        Texture = "5th/1 4x4.png",      States = States,        Rate = 2,
        
        Script = "Particles/LaneSweep"
    
    }

}

return builder:merge(...):Load()