
local path = beat4sprite.animationPath("5th076AA")          local builder = loadfile(path)().Builder

builder = builder:merge {

    [2] = {
        
        States = 9,     Spin = true,

        Sprite = {

            OnCommand=function(self) local r = self.Index - 1       self:rotationz( r * 45 + 90 ) end

        }
    
    }

}

builder[3] = builder[2]:merge { Angle = 180 }           return builder:merge(...):Load()