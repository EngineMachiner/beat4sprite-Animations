
-- Rotating rings texture.

local Builder = beat4sprite.Builder.Retro

local path = beat4sprite.animationPath("1stBG001")          local Actor = loadfile(path)()

Actor[2] = Builder.Load {

    Texture = "1st/8/1 4x4.png",
    
    Blend = "add",      Colors = { Color.White,     color("#505050") },
    
    Mirror = true,      States = 9,     Effect = { Magnitude = Astro.Vector { z = 45 } },

    Composition = { OnCommand=function(self) self:zoom(1.5):setEffect("spin") end },

    Output = {
        
        Scale = 0.625,      Offset = false,

        RectCommand=function(self) self:setEffect("diffuseshift") end
    
    }

}

return Actor