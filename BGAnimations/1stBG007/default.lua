
-- Web.

local Builder = beat4sprite.Builder

local Background = Builder.SongBackground():Load()

Builder = beat4sprite.Builder.Retro

Builder = Builder.Background2 {

    Texture = "1st/4 8x8.png",      Blend = "add",      Matrix = Astro.Vector(2,2),

    States = { Last = 64, Rate = 4 },         Layers = { Back = Background }

}

return Builder:Load()