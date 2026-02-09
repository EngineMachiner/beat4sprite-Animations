
local Builder = beat4sprite.Builder.Retro           local Vector = Astro.Vector

return Builder.Load {

    { Texture = beat4sprite.songBackgroundPath(),     Script = "Morph/Flag" },

    {

        Dynamic = true,

        Texture = "4th/1 5x4.png",      Blend = "add",
        
        Scroll = Vector("Left"),        Rate = 2,       States = { First = 2,  Last = 15,  Rate = 0.5 },
        
        Sprite = { OnCommand=function(self) local i = math.random(14)       self:setstate( i - 1 ) end }

    }

}