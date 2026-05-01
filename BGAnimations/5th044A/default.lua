
local Builder = beat4sprite.Builder.Retro           local Background = Builder.Background

local builder = Builder {

    Background { Texture = "5th/9.png" },

    {

        Texture = "5th/2 5x4.png",          States = { First = 11, Last = 15, Rate = 0.5 },

        Script = "Particles/ScreenBounce"

    }

}

return builder:merge(...):Load()