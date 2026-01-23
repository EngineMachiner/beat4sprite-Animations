
-- Tiled sparks.

local Builder = beat4sprite.Builder

local SongBackground = Builder.SongBackground           Builder = Builder.Retro

return Builder.Load {

	SongBackground(),

    {
        
        Texture = "1st/8/1 4x4.png",

        Mirror = { x = true },      Blend = "add",      States = { First = 9, Last = 16 },

        Output = { Offset = false }
    
    }

}