
-- Tiled explosions.

local Builder = beat4sprite.Builder

local Background = Builder.SongBackground():Load()

Builder = beat4sprite.Builder.Retro

return Builder.Load {

    Texture = "1st/8/2 4x4.png",      Blend = "add",        Alpha = 0.5,

    States = { Last = 8 },         Layers = { Back = Background },

    Output = {
        
        Scale = 0.625,      Offset = false,

        RectCommand=function(self) self.Rainbow = true end
    
    }

}