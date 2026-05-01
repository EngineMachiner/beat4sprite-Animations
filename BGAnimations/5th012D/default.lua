
local Skulls = beat4sprite.Builder.Retro {

    Texture = "5th/1 4x3.png",      States = { First = 3, Last = 6, Rate = 2 },

    Rate = 2,        Script = "Particles/ScreenBounce",

    Sprite = {
        
        OnCommand=function(self)
            
            local n = self:GetNumStates() - 1       n = math.random(n)      self:setstate(n)
        
        end
    
    }

}

Skulls = Skulls:merge(...):Load()

local path = beat4sprite.animationPath("5th012A")

return loadfile(path) { Layers = { Front = Skulls } }