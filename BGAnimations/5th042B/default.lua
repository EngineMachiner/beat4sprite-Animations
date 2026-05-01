
local function helix(angle)

    angle = angle or 0

    return {
        
        Texture = "5th/2 5x4.png",        States = 3,       Spin = true,        Angle = angle,

        Sprite = { OnCommand=function(self) local r = self.Index - 1       self:rotationz( r * 45 + 90 ) end },

        Script = "Particles/Depth/Helix"
    
    }

end

local path = beat4sprite.animationPath("5th042A")

local builder = loadfile(path)().Builder


return beat4sprite.Builder.Retro.Load {
    
    builder[1]:input(),     helix(),    helix(180)

}