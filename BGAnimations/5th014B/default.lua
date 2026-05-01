
local path = beat4sprite.animationPath("5th014A")           local Vector = Astro.Vector

local oranges = beat4sprite.Builder.Retro {

    Texture = "5th/6 4x3.png",
    
    States = { Last = 2 },      Whirl = true,       Script = "Particles/Depth/Helix"

}

oranges = oranges:merge(...):Load()

return loadfile(path) {

    Matrix = false,     Dynamic = false,    Zoom = 1,       Output = { Scale = 1 },

    Scroll = { Direction = Vector("UpLeft"),    Skip = true },      Layers = { Front = oranges }

}