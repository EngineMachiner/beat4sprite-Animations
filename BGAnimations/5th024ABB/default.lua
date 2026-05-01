
local function helix(angle)

    angle = angle or 0

    return {
        
        Texture = "5th/2 5x4.png",
        
        States = 1,       Spin = true,        Angle = angle,

        Sprite = {

            OnCommand=function(self) local r = self.Index - 1       self:rotationz( r * 45 + 90 ) end

        },

        Script = "Particles/Depth/Helix"
    
    }

end

local builder = beat4sprite.Builder.Retro {

    { Texture = "5th/2 5x4.png",    States = 10 },      helix(),    helix(180)

}

return builder:merge(...):Load()