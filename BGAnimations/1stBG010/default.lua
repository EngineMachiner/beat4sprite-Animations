
local Builder = beat4sprite.Builder

local Background = Builder.SongBackground():Load()

Builder = beat4sprite.Builder.Retro

return Builder.Load {

    Texture = "1st/10/1 2x2.png",        Blend = "add",         Alpha = 0.25,

    States = { Last = 4, Rate = 0.25 },         Layers = { Back = Background }
    
}