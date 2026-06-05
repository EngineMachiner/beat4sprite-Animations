
local Vector = Astro.Vector

local merge = tapLua.deepMerge          local path = beat4sprite.animationPath("5th056A")

local input = {

    [2] = {
        
        Texture = "5th/3 4x3.png",      States = { Last = 6, Rate = 0.5 },

        Sprite = { OnCommand=function(self) self:setEffect("spin") end },
        
        Effect = { Magnitude = Vector { z = 45 } },        Script = "Particles/Depth/Cascade"
    
    }

}

input = merge( input, ... )        return loadfile(path)(input)