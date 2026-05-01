
local function helix(angle)

    angle = angle or 0

    return beat4sprite.Builder.Retro {
        
        Texture = "5th/2 5x4.png",        States = 2,       Spin = true,        Angle = angle,

        Sprite = { OnCommand=function(self) local r = self.Index - 1       self:rotationz( r * 45 + 90 ) end },

        Script = "Particles/Depth/Helix"
    
    }

end

local path = beat4sprite.animationPath("5th069B")

local builder = loadfile(path)().Builder        builder[2] = helix(0)       builder[3] = helix(180)

return builder:merge(...):Load()