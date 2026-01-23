
-- Rotating rings texture.

local Builder = beat4sprite.Builder.Retro

local path = beat4sprite.animationPath("1stBG001")

local Actor = loadfile(path) {

    {
        
        Colors = { Color.White,     color("#808080") },

        Output = { OnCommand=function(self) self:setEffect("diffuseshift") end }
    
    }    

}

Actor[2] = Builder.Load {

    Texture = "1st/8 5x4.png",
    
    Mirror = true,      States = 6,     Effect = { Magnitude = Astro.Vector { z = 45 } },

    Composition = { OnCommand=function(self) self:zoom(1.5):setEffect("spin") end },

    Output = { Scale = 0.625,       Offset = false }

}

return Actor

