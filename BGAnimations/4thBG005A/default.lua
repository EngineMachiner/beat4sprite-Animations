
local Builder = beat4sprite.Builder         local SongBackground = Builder.SongBackground()

Builder = Builder.Retro         local Vector = Astro.Vector

return Builder.Load {

    SongBackground:merge { Scroll = Vector("UpLeft") },
    SongBackground:merge { Scroll = Vector("DownRight"),    Alpha = 0.5 }

}