
local random = tapLua.Color.random

local path = beat4sprite.animationPath("5thBG004A")         local builder = loadfile(path)().Builder

builder = beat4sprite.Builder.Retro {

    builder:input(),

    { 
        
        Texture = "5th/7 4x4.png",
        
        States = { First = 12, Last = 13 },     Script = "Particles/Depth/StaticScatter",

        Sprite = {
            
            ScatterCommand=function(self)
            
                for i = 1, 2 do self.beat4sprite.Colors[i] = random() end
            
            end
        
        }

    }

}

return builder:merge(...):Load()