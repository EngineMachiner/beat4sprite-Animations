
local Builder = beat4sprite.Builder

local SongBackground = Builder.SongBackground           Builder = Builder.Retro

local Cogs = Builder.Background {

    Texture = "1st/1 4x1.png",      States = { Last = 4, Rate = 0.25 },

    Sprite = { OnCommand=function(self) self:fadeHorizontally(0.125) end },

    Mirror = false,         Colors = Color.Black

}

return Builder.Load { SongBackground(),       Cogs:input() }