
local path = beat4sprite.animationPath("5th059")

local builder = loadfile(path)().Builder

builder = beat4sprite.Builder.Retro {

    builder:input(),

    {

        Texture = "5th/5 4x4.png",
        
        States = { First = 5, Last = 8 },       Scroll = Astro.Vector("UpLeft")
        
    }

}

return builder:merge(...):Load()