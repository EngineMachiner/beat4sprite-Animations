
local path = beat4sprite.animationPath("5th016A")

local Snakes = beat4sprite.Builder.Retro {

    Texture = "5th/1 4x4.png",
    
    States = 10,        Reversed = true,        Script = "Particles/Depth/Helix",

    Sprite = {

        OnCommand=function(self) local r = self.Index - 1       self:rotationz( r * 45 + 90 ) end

    }

}

return loadfile(path) { Layers = { Front = Snakes:Load() } }