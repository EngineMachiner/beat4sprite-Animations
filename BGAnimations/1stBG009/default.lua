
local Builder = beat4sprite.Builder

local Background = Builder.SongBackground():Load()

Builder = beat4sprite.Builder.Retro

Builder = Builder.Background2 {

    Texture = "1st/9/5 5x3.png",        Blend = "add",      Alpha = 0.5,

    States = { Last = 15 },         Layers = { Back = Background }
    
}

return Builder:Load()