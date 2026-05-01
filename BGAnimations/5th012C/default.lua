
local path = beat4sprite.animationPath("5th012A")

local skulls = beat4sprite.Builder.Retro {

    Texture = "5th/1 4x3.png",      Rate = 2,
    
    States = { First = 5,   Last = 6,       Types = "Position" },         Script = "Particles/ScreenBounce"

}

skulls = skulls:merge(...):Load()

return loadfile(path) { Layers = { Front = skulls } }