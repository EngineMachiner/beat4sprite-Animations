
local Vector = Astro.Vector

local Builder = beat4sprite.Builder.Retro           local Matrix = Vector( 5, 4 )

return Builder.Load {

    Builder.Background { Texture = "5th/2.png" },

    beat4sprite.Load("Morph/Grid") {

        Texture = "5th/1.png",      Matrix = Matrix,

        States = { Matrix = Matrix,     Scroll = Vector("Up") },

        Effect = { Magnitude = Vector { y = 1 },   Period = 2 },

        Sprite = { OnCommand=function(self) self:setEffect("pulse") end }

    }

}