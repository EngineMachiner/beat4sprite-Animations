
local Builder = beat4sprite.Builder.Retro           local Vector = Astro.Vector

return Builder.Load {

    { Texture = "4th/9.png",      Script = "Kaleidoscope/Polygon" },

    {

        Texture = "4th/1 5x4.png",          States = { First = 2,   Last = 15 },

        Sprite = { OnCommand=function(self) self:blend("add"):GetParent():setupRainbowBlink() end },
        
        Direction = Vector("Up"),       Script = "Particles/Depth/Spread"

    }

}